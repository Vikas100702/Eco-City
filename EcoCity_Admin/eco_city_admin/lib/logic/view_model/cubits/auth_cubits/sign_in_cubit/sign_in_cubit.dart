import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());
  //late final TabController tabController;
  final focusNodeEmail=FocusNode();
  final focusNodePassword=FocusNode();
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController = TextEditingController();
  bool isPasswordVisible = false; // false means open eye icon and true means close eye icon


  void toggleVisibilityIcon(){
    isPasswordVisible = !isPasswordVisible;
    emit(ToggleVisibilityIconState());
  }

  void navigateToSignUpScreen() {
    emit(SignInNavigateToSignUpScreenActionState());
  }

  @override
  Future<void> close() {
    focusNodeEmail.dispose();
    focusNodePassword.dispose();
    emailEditingController.dispose();
    passwordEditingController.dispose();
    //scrollController.dispose();
    return super.close();
  }
}
