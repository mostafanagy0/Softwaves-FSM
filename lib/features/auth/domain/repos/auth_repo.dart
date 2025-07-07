import 'package:dartz/dartz.dart';
import 'package:fsm/core/errors/sso_eror_handler.dart';

abstract class AuthRepo {
  Future<Either<Failure, Unit>> loginWithMicrosoftSSO();
}
