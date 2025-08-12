part of 'sign_in_cubit.dart';

@immutable
abstract class SignInState {}


@immutable
abstract class SignInActionState extends SignInState{}

class SignInInitial extends SignInState {}
class ToggleVisibilityIconState extends SignInState {}
class SignInSuccessState extends SignInState {}
class SignInFailureState extends SignInState {
  final String error;
  SignInFailureState({required this.error});
}
class SignInLoadingState extends SignInState {}

class SignInNavigateToSignUpScreenActionState extends SignInActionState{}




