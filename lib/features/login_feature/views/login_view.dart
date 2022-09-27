import 'package:FitnessPassport/utils/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../core/bottom_bar/bottom_bar_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: CustomColors.bgBlue,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              // controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              // focusNode: emailFocusNode,
              decoration: const InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.alternate_email)),
              onFieldSubmitted: (value) {
                // Utils.fieldFocusChange(
                //     context, emailFocusNode, passwordFocusNode);
              },
            ),
            // ValueListenableBuilder(
            //     valueListenable: _obsecurePassword,
            //     builder: (context, value, child) {
            //       return TextFormField(
            //         // controller: _passwordController,
            //         // obscureText: _obsecurePassword.value,
            //         // focusNode: passwordFocusNode,
            //         obscuringCharacter: "*",
            //         decoration: InputDecoration(
            //           hintText: 'Password',
            //           labelText: 'Password',
            //           prefixIcon: Icon(Icons.lock_open_rounded),
            //           suffixIcon: InkWell(
            //               // onTap: () {
            //               //   _obsecurePassword.value = !_obsecurePassword.value;
            //               // },
            //               // child: Icon(_obsecurePassword.value
            //               //     ? Icons.visibility_off_outlined
            //               //     : Icons.visibility)),
            //               ),
            //         ),
            //       );
            //     }),
            SizedBox(
              height: height * .085,
            ),

            // RoundButton(
            //   title: 'Login',
            //   // loading: authViewMode.loading,
            //   onPress: (){
            //     // if(_emailController.text.isEmpty){
            //     //
            //     //   Utils.flushBarErrorMessage('Please enter email', context);
            //     // }else if(_passwordController.text.isEmpty){
            //     //   Utils.flushBarErrorMessage('Please enter password', context);
            //     //
            //     // }else if(_passwordController.text.length < 6){
            //     //   Utils.flushBarErrorMessage('Please enter 6 digit password', context);
            //     //
            //     // }else {
            //
            //
            //       // Map data = {
            //       //   'email' : _emailController.text.toString(),
            //       //   'password' : _passwordController.text.toString(),
            //       // };
            //
            //       // Map data = {
            //       //   'email' : 'eve.holt@reqres.in',
            //       //   'password' : 'cityslicka',
            //       // };
            //
            //       // authViewMode.loginApi(data , context);
            //       print('api hit');
            //     }
            //   },
            // ),
            // SizedBox(
            //   height: height * .02,
            // ),
            // InkWell(
            //     onTap: () {
            //       // Navigator.pushNamed(context, RoutesName.signUp);
            //     },
            //     child: Text("Don't have an accont? Sign Up")),
          ],
        ),
      ),
    );
  }
}
