import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yoko_app/features/auth/auth.dart';
import 'package:yoko_app/utils/utils.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> with MainBoxMixin {
  final LoginUseCase loginUserCase;
  final RegisterUseCase registerUseCase;

  AuthBloc({
    required this.loginUserCase,
    required this.registerUseCase,
  }) : super(AuthInitial()) {
    on<AuthCheckLocal>(_onCheckLocal);
    on<AuthLogin>(_onAuthLogin);
    on<AuthRegister>(_onAuthRegister);
  }

  void _onCheckLocal(AuthCheckLocal event, Emitter<AuthState> emit) {
    emit(AuthLoading());
    final String? token = getData<String?>(MainBoxKeys.token);
    if (token != null) {
      final UserEntity user = UserEntity.fromJson(
        getMapData(MainBoxKeys.user),
      );
      final AuthUserEntity authUserEntity =
          AuthUserEntity(user: user, token: token);
      emit(AuthSuccess(authUserEntity));
    } else {
      emit(const AuthFailure('No token found'));
    }
  }

  void _onAuthLogin(
    AuthLogin event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    final result = await loginUserCase.call(event.params);
    result.fold(
      (error) => emit(AuthFailure(error.message!)),
      (authUserEntity) {
        emit(AuthSuccess(authUserEntity));
      },
    );
  }

  void _onAuthRegister(
    AuthRegister event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    final result = await registerUseCase.call(event.params);
    result.fold(
      (error) => emit(AuthFailure(error.message!)),
      (authUserEntity) {
        emit(AuthSuccess(authUserEntity));
      },
    );
  }
}
