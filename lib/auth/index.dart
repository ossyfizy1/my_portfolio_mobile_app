import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/dashboard/route/routes.dart';
import 'package:my_portfolio/shared_resources/app_color.dart';
import 'package:my_portfolio/shared_resources/button/button.dart';
import 'package:my_portfolio/shared_resources/custom_divider/custom_divider.dart';
import 'package:my_portfolio/shared_resources/input_validation/input_validation.dart';
import 'package:my_portfolio/shared_resources/navigation/navigation_key.dart';
import 'package:my_portfolio/shared_resources/style/text_style.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureText = true;
  bool isFormFilled = true;
  bool valuefirst = false;

  @override
  void initState() {
    phoneController.text = "09000000010";
    passwordController.text = "P@sword123";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: AppColors.color3,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () {
          // hide keyboard
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: () {
            if (phoneController.text.length == 11 &&
                passwordController.text.isNotEmpty) {
              isFormFilled = true;
            } else {
              isFormFilled = false;
            }

            setState(() {});
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    Text("Log In",
                        style: customTextStyle(
                            context, 32, null, FontWeight.w700, 1.4)),
                    const SizedBox(
                      height: 4,
                    ),
                    Text("Sign In to your account",
                        style: customTextStyle(context, 14, AppColors.color5,
                            FontWeight.w400, 1.4)),
                    const SizedBox(
                      height: 100,
                    ),
                    Text("Phone Number",
                        style: customTextStyle(
                            context, 14, null, FontWeight.w600, 1.4)),
                    const SizedBox(
                      height: 7,
                    ),
                    TextFormField(
                      controller: phoneController,
                      maxLength: 11,
                      style: TextStyle(
                        color: AppColors.color5,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                width: 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0))),
                        hintText: "Phone Number",
                        counterText: "",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      validator: Validator.validateMobile,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text("Password",
                        style: customTextStyle(
                            context, 14, null, FontWeight.w600, 1.4)),
                    const SizedBox(
                      height: 7,
                    ),
                    Stack(
                      children: [
                        TextFormField(
                          controller: passwordController,
                          style: TextStyle(
                            color: AppColors.color5,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                    width: 1),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0))),
                            hintText: "Enter Password",
                            hintStyle: TextStyle(
                              color: AppColors.color8,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          obscureText: obscureText,
                          keyboardType: TextInputType.text,
                          onChanged: (value) {
                            print(value);
                            if (Validator.isPasswordValid(value) != null) {
                              setState(() {
                                obscureText = true;
                                isFormFilled = false;
                              });
                            }
                          },
                          validator: Validator.isPasswordValid,
                        ),
                        Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                              icon: passwordController.text.isNotEmpty &&
                                      obscureText
                                  ? const Icon(
                                      Icons.remove_red_eye,
                                      size: 20,
                                    )
                                  : passwordController.text.isNotEmpty &&
                                          obscureText == false
                                      ? const Icon(
                                          Icons.close,
                                          size: 20,
                                        )
                                      : const SizedBox.shrink()),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    GestureDetector(
                      // onTap: () => navigatorKey.currentState!
                      //     .pushNamed(AuthRoutes.forgotPassword),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Forgotten Password?",
                              style: customTextStyle(
                                  context, 12, null, FontWeight.w500, 1.4)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomDivider(
                            width: 141,
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                        Text("Or",
                            style: customTextStyle(
                                context, 16, null, FontWeight.w500, 1.4)),
                        CustomDivider(
                            width: 141,
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ],
                    ),
                    const SizedBox(height: 32),
                    GestureDetector(
                      // onTap: () =>
                      //     // Flutter remove all routes
                      //     navigatorKey.currentState!
                      //         .pushNamedAndRemoveUntil(HomeRoutes.signUp,
                      //             (Route<dynamic> route) => false),
                      child: Align(
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            text: "Don't have an Account? ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w500),
                            children: <TextSpan>[
                              TextSpan(
                                text: "Create an account ",
                                style: TextStyle(
                                    fontSize: 15,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: isFormFilled
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.inversePrimary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: CustomButton(
                text: "Login",
                onClick: () async {
                  if (_formKey.currentState!.validate()) {
                    // hide keyboard
                    FocusScope.of(context).requestFocus(FocusNode());
                    navigatorKey.currentState!
                        .pushNamed(DashboardRoutes.dashboard);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
