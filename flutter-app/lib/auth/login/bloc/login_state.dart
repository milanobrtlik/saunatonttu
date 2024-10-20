part of 'login_bloc.dart';

class LoginState {
  final FormzStatus status;
  final UsernameInput usernameInput;
  final PasswordInput passwordInput;

  const LoginState({
    this.status = FormzStatus.pure,
    this.usernameInput = const UsernameInput.pure(),
    this.passwordInput = const PasswordInput.pure(),
  });

  LoginState copyWith({
    FormzStatus? status,
    UsernameInput? usernameInput,
    PasswordInput? passwordInput,
  }) {
    return LoginState(
      status: status ?? this.status,
      usernameInput: usernameInput ?? this.usernameInput,
      passwordInput: passwordInput ?? this.passwordInput,
    );
  }

  List<FormzInput> get inputs => [usernameInput, passwordInput];
}
