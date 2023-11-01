import 'package:flutter/material.dart';
import 'package:my_portfolio/dashboard/widget/cv_profile_view.dart';
import 'package:my_portfolio/dashboard/widget/git_hub.dart';
import 'package:my_portfolio/dashboard/widget/project_view.dart';
import 'package:my_portfolio/shared_resources/app_color.dart';
import 'package:my_portfolio/shared_resources/bottom_nav/bottom_navigation.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  final screens = [
    const GithubView(),
    const CvProfileView(),
    const ProjectView(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Flutter remove all routes
        // showExitDialog(context);

        return true;
      },
      child: Scaffold(
          backgroundColor: AppColors.color3,
          appBar: AppBar(
            toolbarHeight: 0,
            backgroundColor: AppColors.color3,
            elevation: 0,
          ),
          body: IndexedStack(
            index: currentIndex,
            children: screens,
          ),
          bottomNavigationBar: Container(
              color: Colors.grey.withOpacity(0.1), // AppColors.color3,
              child: BottomNavigation(switchViews: (index) {
                setState(() {
                  currentIndex = index!;
                });
              }))),
    );
  }
}
