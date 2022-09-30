import 'package:FitnessPassport/utils/themes/decorations.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../../../components/button_widget.dart';
import '../../../components/label_widget.dart';
import '../../../core/globals/constants.dart';
import '../../../utils/themes/colors.dart';
import '../../../utils/themes/text_styles.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);
  bool _isObscure = true;

  SizedBox sizeBox(double size) => SizedBox(height: size);

  TextField emailInput() => TextField(
        decoration:
            decoInput('Email', IconlyLight.message, CustomColors.bgWhite),
      );

  TextField passwordInput() => TextField(
        obscureText: _isObscure,
        decoration:
            decoInput('Password', IconlyLight.lock, CustomColors.bgWhite)
                .copyWith(
          suffixIcon: IconButton(
            icon: Icon(
              _isObscure
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: CustomColors.greyMedium,
            ),
            onPressed: () => setState(
              () => _isObscure = !_isObscure,
            ),
          ),
        ),
        // InputDecoration(
        //   filled: true,
        //   fillColor: CustomColors.bgWhite,
        //   border: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(15.0),
        //     borderSide: BorderSide.none,
        //   ),
        //   labelText: 'Password',
        //   floatingLabelBehavior: FloatingLabelBehavior.never,
        //   suffixIcon: IconButton(
        //     icon: Icon(
        //       _isObscure
        //           ? Icons.visibility_off_outlined
        //           : Icons.visibility_outlined,
        //       color: CustomColors.greyMedium,
        //     ),
        //     onPressed: () => setState(
        //       () => _isObscure = !_isObscure,
        //     ),
        //   ),
        //   prefixIcon: const Icon(
        //     IconlyLight.lock,
        //     color: CustomColors.greyDark,
        //   ),
        // ),
      );

  Button loginButton() => Button(
        eButtonState: EButtonState.bActive,
        onPressed: () {},
        text: 'Login',
        textColor: CustomColors.blue01,
        btnColor: CustomColors.primaryWhite,
        borderColor: CustomColors.primaryWhite,
        eButtonType: EButtonType.bText,
      );

  @override
  Widget build(BuildContext context) {
    // final h = MediaQuery.of(context).size.height;
    // final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: CustomColors.bgBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 30.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              sizeBox(40.0),
              Image.asset(
                'assets/images/fp_logo_2x.png',
                // height: 200,
                width: 240,
              ),
              // const FlutterLogo(
              //   size: 200,
              // ),
              sizeBox(40.0),
              // ),
              const Label(
                text: 'Hey there',
                fontStyle: tSubTitle2,
                textColor: CustomColors.white01,
              ),
              sizeBox(10.0),
              const Label(
                text: 'Welcome Back',
                fontStyle: tHeader2,
                textColor: CustomColors.white02,
              ),
              sizeBox(60.0),
              emailInput(),
              sizeBox(20.0),
              passwordInput(),
              // ),
              sizeBox(10.0),
              const Label(
                text: 'Forgot your Password?',
                fontStyle: tSubTitle2,
                textColor: CustomColors.white01,
              ),
              sizeBox(60.0),
              loginButton(),
              sizeBox(10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Label(
                    text: 'Don\'t have an account yet? ',
                    fontStyle: tSubTitle2,
                    textColor: CustomColors.white03,
                  ),
                  Label(
                    text: 'Register',
                    fontStyle: tSubTitle2,
                    textColor: CustomColors.black01,
                  ),
                ],
              ),
              // ),
              // TextFormField(
              //   // controller: _emailController,
              //   keyboardType: TextInputType.emailAddress,
              //   // focusNode: emailFocusNode,
              //   decoration: const InputDecoration(
              //       hintText: 'Email',
              //       labelText: 'Email',
              //       prefixIcon: Icon(Icons.alternate_email)),
              //   onFieldSubmitted: (value) {
              //     // Utils.fieldFocusChange(
              //     //     context, emailFocusNode, passwordFocusNode);
              //   },
              // ),
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
              // SizedBox(
              //   height: height * .085,
              // ),

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
      ),
    );
  }
}
