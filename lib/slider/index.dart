import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/auth/route/routes.dart';
import 'package:my_portfolio/shared_resources/app_color.dart';
import 'package:my_portfolio/shared_resources/navigation/navigation_key.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Login',
      onFinish: () {
        navigatorKey.currentState!.pushNamed(AuthRoutes.signIn);
      },
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      skipTextButton: const Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: const Text(
        'Step In',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {},
      controllerColor: Theme.of(context).colorScheme.primary,
      totalPage: 2,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            "assets/images/avatar.jpeg",
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Image.asset(
          'assets/images/slide_1.png',
          height: 400,
          width: MediaQuery.of(context).size.width,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'My Portfolio!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Welcome, I\'m Osagie Osaigbovo Charles and this is my Portfolio.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.color2,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'Login Required',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Kindly Login to view more information as you please.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.color2,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
