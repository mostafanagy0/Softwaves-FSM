import 'package:dartz/dartz.dart';
import 'package:fsm/core/errors/sso_eror_handler.dart';
import 'package:fsm/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:fsm/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepoImpl({required this.authRemoteDataSource});
  @override
  Future<Either<Failure, Unit>> loginWithMicrosoftSSO() async {
    {
      try {
        await authRemoteDataSource.loginWithMicrosoftSSO();
        return const Right(unit);
      } catch (e) {
        return Left(AuthFailure("login failure: ${e.toString()}"));
      }
    }
  }
}
