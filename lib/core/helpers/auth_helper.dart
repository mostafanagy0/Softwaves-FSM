import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:fsm/core/constants/sso_constants.dart';

class AppAuthHelper {
  final FlutterAppAuth _appAuth = FlutterAppAuth();

  Future<String?> signInWithMicrosoft() async {
    try {
      final authority =
          'https://login.microsoftonline.com/${SsoConstants.tenantId}';

      final result = await _appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          SsoConstants.clientId,
          SsoConstants.redirectUri,
          serviceConfiguration: AuthorizationServiceConfiguration(
            authorizationEndpoint: '$authority/oauth2/v2.0/authorize',
            tokenEndpoint: '$authority/oauth2/v2.0/token',
          ),
          scopes: SsoConstants.scopes,

          promptValues: ['login'],
        ),
      );

      return result.accessToken;
      
    } catch (e) {
      print('Microsoft SSO Login Error: $e');
      return null;
    }
  }
}
