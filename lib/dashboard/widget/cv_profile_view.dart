import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/shared_resources/app_color.dart';
import 'package:my_portfolio/shared_resources/custom_divider/custom_divider.dart';
import 'package:my_portfolio/shared_resources/style/text_style.dart';

class CvProfileView extends StatefulWidget {
  const CvProfileView({super.key});

  @override
  State<CvProfileView> createState() => _CvProfileViewState();
}

class _CvProfileViewState extends State<CvProfileView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("My CV Profile",
                    style: customTextStyle(
                        context, 20, null, FontWeight.w700, 1.4)),
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
            Text(
                "I am Osagie Osaigbovo Charles, a software developer with quality years of experience in software development and business analysis.",
                style: customTextStyle(
                    context, 13, AppColors.color5, FontWeight.w400, 1.4)),
            SizedBox(
              height: 20.h,
            ),
            Text(
                "I am a team player, focused, result oriented and love to see projects to completion. Seeking an opportunity to contribute positively to the growth of the organization and also to work inventively towards the objectives of the establishment, making her objectives my objectives.",
                style: customTextStyle(
                    context, 13, AppColors.color5, FontWeight.w400, 1.4)),
            SizedBox(
              height: 20.h,
            ),
            CustomDivider(width: double.infinity, color: AppColors.color1),
            SizedBox(
              height: 20.h,
            ),
            Text("- Github Profile: https://github.com/ossyfizy1",
                style: customTextStyle(
                    context, 13, AppColors.color5, FontWeight.w400, 1.4)),
            SizedBox(
              height: 20.h,
            ),
            Text(
                "- LinkedIn Profile: https://www.linkedin.com/in/osagie-osaigbovo-7990145a/",
                style: customTextStyle(
                    context, 13, AppColors.color5, FontWeight.w400, 1.4)),

            // education
            SizedBox(
              height: 50.h,
            ),
            Text("Education",
                style:
                    customTextStyle(context, 15, null, FontWeight.w700, 1.4)),
            CustomDivider(width: double.infinity, color: AppColors.color1),
            SizedBox(
              height: 20.h,
            ),
            Text(
                "BSc. Computer Science. Ambrose Alli University (A.A.U), Ekpoma ▪ Edo State ▪ Nigeria",
                style: customTextStyle(
                    context, 13, AppColors.color5, FontWeight.w400, 1.4)),
            SizedBox(
              height: 20.h,
            ),
            Text("Date: 01/2009 – 07/2014.",
                style: customTextStyle(
                    context, 13, AppColors.color5, FontWeight.w400, 1.4)),

            // SKILLS / AREAS OF SPECIALISATION
            SizedBox(
              height: 50.h,
            ),
            Text("SKILLS / AREAS OF SPECIALISATION",
                style:
                    customTextStyle(context, 15, null, FontWeight.w700, 1.4)),
            CustomDivider(width: double.infinity, color: AppColors.color1),
            SizedBox(
              height: 20.h,
            ),
            Text(
                "Mobile App Development: \n\n● Flutter and Dart (Cross-platform app development).",
                style: customTextStyle(
                    context, 13, AppColors.color5, FontWeight.w400, 1.4)),
            SizedBox(
              height: 20.h,
            ),
            Text(
                "Backend Development Languages / Frameworks: \n\n● Dart (Dart Frog Framework) \n● NodeJS (Express Framework).",
                style: customTextStyle(
                    context, 13, AppColors.color5, FontWeight.w400, 1.4)),

            SizedBox(
              height: 20.h,
            ),
            Text(
                "Databases: \n\n● SQL \n● MySQL \n● MongoDB \n● Firebase Firestore (real time).",
                style: customTextStyle(
                    context, 13, AppColors.color5, FontWeight.w400, 1.4)),
            SizedBox(
              height: 20.h,
            ),
            Text(
                "Hosting Services: \n\n● Heroku \n● AWS (LightSail) \n● railway.app \n● play store \n● app store",
                style: customTextStyle(
                    context, 13, AppColors.color5, FontWeight.w400, 1.4)),
            SizedBox(
              height: 20.h,
            ),
            Text(
                "Additional Knowledge, Skills and Technologies: \n\n● Git.\n● Rest APIs. \n● Web: HTML, CSS, Bootstrap, JavaScript\n● Project Management.\n● Business Requirement Documents.\n● Business Flow Process.",
                style: customTextStyle(
                    context, 13, AppColors.color5, FontWeight.w400, 1.4)),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
