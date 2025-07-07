import 'package:bloc/bloc.dart';
import 'package:fsm/features/auth/domain/repos/auth_repo.dart';
import 'package:fsm/features/auth/presentation/cubit/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepo) : super(AuthInitial());
  final AuthRepo authRepo;

  Future<void> loginWithMicrosoftSSO() async {
    emit(AuthLoading());
    final result = await authRepo.loginWithMicrosoftSSO();
    result.fold(
      (failure) => emit(AuthFailure(failure.message)),
      (_) => emit(AuthSuccess()),
    );
  }
}
