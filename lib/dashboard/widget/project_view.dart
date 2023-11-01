import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/shared_resources/app_color.dart';
import 'package:my_portfolio/shared_resources/custom_divider/custom_divider.dart';
import 'package:my_portfolio/shared_resources/style/text_style.dart';

class ProjectView extends StatefulWidget {
  const ProjectView({super.key});

  @override
  State<ProjectView> createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Projects Involvement",
                  style:
                      customTextStyle(context, 20, null, FontWeight.w700, 1.4)),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/images/avatar.jpeg",
                  width: 50,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomDivider(width: double.infinity, color: AppColors.color1),
          SizedBox(
            height: 20.h,
          ),
          projectList(
              context: context,
              title: "1. KOKOFP (Health Care Mobile App Solution)",
              link1:
                  "\n● App Store: https://apps.apple.com/us/app/kokofp/id6447243135",
              link2:
                  "\n● Play Store: https://play.google.com/store/apps/details?id=com.spearhead.kokofp"),
          SizedBox(
            height: 20.h,
          ),
          projectList(
              context: context,
              title:
                  "2. Events & Market Place Mobile App (The one stop solution for your entire event needs and services)",
              link1: "\n● App Store: Coming Soon...",
              link2:
                  "\n● Play Store: https://play.google.com/store/apps/details?id=com.eventsandmarketplace.www"),
          SizedBox(
            height: 20.h,
          ),
          projectList(
              context: context,
              title:
                  "3. Jeetar Mobile App (Grocery Shopping https://jeetar.com/)",
              link1:
                  "\n● App Store: https://apps.apple.com/us/app/jeetar/id1599147708",
              link2:
                  "\n● Play Store: https://play.google.com/store/apps/details?id=com.jeetar.superapp&hl=en&gl=US"),
        ],
      ),
    ));
  }

  Column projectList(
      {required BuildContext context,
      required String title,
      required String link1,
      required String link2}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: customTextStyle(
                context, 15, AppColors.color5, FontWeight.w700, 1.4)),
        SizedBox(
          height: 10.h,
        ),
        Text(link1,
            style: customTextStyle(
                context, 13, AppColors.color5, FontWeight.w400, 1.4)),
        SizedBox(
          height: 10.h,
        ),
        Text(link2,
            style: customTextStyle(
                context, 13, AppColors.color5, FontWeight.w400, 1.4)),
        SizedBox(
          height: 20.h,
        ),
        CustomDivider(width: double.infinity, color: AppColors.color1),
      ],
    );
  }
}
