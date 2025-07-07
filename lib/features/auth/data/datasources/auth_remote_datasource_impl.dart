import 'package:fsm/core/constants/shered_pref_constants.dart';
import 'package:fsm/core/errors/sso_eror_handler.dart';
import 'package:fsm/core/helpers/auth_helper.dart';
import 'package:fsm/core/helpers/shared_pref_helper.dart';
import 'package:fsm/features/auth/data/datasources/auth_remote_datasource.dart';

class AuthRemoteDatasourceImpl implements AuthRemoteDataSource {
  final AppAuthHelper authHelper;

  AuthRemoteDatasourceImpl({required this.authHelper});
  @override
  Future<void> loginWithMicrosoftSSO() async {
    final token = await authHelper.signInWithMicrosoft();
    if (token != null) {
      await SharedPrefHelper.setSecuredString(
        SheredPrefConstants.accessToken,
        token,
      );
    } else {
      throw AuthFailure('Failed to login with Microsoft SSO');
    }
  }
}
