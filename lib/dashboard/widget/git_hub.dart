import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/dashboard/cubit/dashbaord_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/dashboard/model/github_model.dart';
import 'package:my_portfolio/setup.dart';
import 'package:my_portfolio/shared_resources/app_color.dart';
import 'package:my_portfolio/shared_resources/custom_divider/custom_divider.dart';
import 'package:my_portfolio/shared_resources/navigation/navigation_key.dart';
import 'package:my_portfolio/shared_resources/show_snack_bar.dart';
import 'package:my_portfolio/shared_resources/style/text_style.dart';

class GithubView extends StatefulWidget {
  const GithubView({super.key});

  @override
  State<GithubView> createState() => _GithubViewState();
}

class _GithubViewState extends State<GithubView> {
  bool showLoading = true;
  GitHubModel? profile;
  getGithubProfile({required String username}) {
    getIt.get<DashbaordCubit>().getGithubProfile(username);
  }

  @override
  void initState() {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => getGithubProfile(username: "ossyfizy1"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      bloc: getIt.get<DashbaordCubit>(),
      listener: (context, state) {
        if (state is GithubFetch) {
          showLoading = false;
          profile = state.details;
        }
        if (state is GithubFetchWithError) {
          showLoading = false;
          utilShowSnackBarMessage(state.message, context);
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Visibility(
            visible: showLoading,
            replacement: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Fetch GitHub Profile",
                          style: customTextStyle(
                              context, 20, null, FontWeight.w700, 1.4)),
                      IconButton(
                          onPressed: () {
                            // Flutter remove all routes
                            navigatorKey.currentState!.pushNamedAndRemoveUntil(
                                "/", (Route<dynamic> route) => false);
                          },
                          icon: const Icon(Icons.logout))
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomDivider(
                      width: double.infinity, color: AppColors.color1),
                  SizedBox(
                    height: 30.h,
                  ),
                  Visibility(
                      visible: profile == null,
                      replacement: detailInformation(profile),
                      child: const SizedBox.shrink())
                ],
              ),
            ),
            child: Center(
                child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height / 2),
              child: Column(
                children: [
                  const CircularProgressIndicator.adaptive(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("Fetching github info, please wait...",
                      style: customTextStyle(
                          context, 12, null, FontWeight.w700, 1.4)),
                ],
              ),
            )),
          ),
        );
      },
    );
  }

  detailInformation(GitHubModel? profile) {
    if (profile == null) {
      return const SizedBox.shrink();
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("ID : \n${profile.id}",
              style: customTextStyle(context, 14, null, FontWeight.w400, 1.4)),
          SizedBox(
            height: 20.h,
          ),
          Text("Full Name : \n${profile.name}",
              style: customTextStyle(context, 14, null, FontWeight.w400, 1.4)),
          SizedBox(
            height: 20.h,
          ),
          Text("Location : \n${profile.location}",
              style: customTextStyle(context, 14, null, FontWeight.w400, 1.4)),
          SizedBox(
            height: 20.h,
          ),
          Text("Github Url : \n${profile.url}",
              style: customTextStyle(context, 14, null, FontWeight.w400, 1.4)),
          SizedBox(
            height: 20.h,
          ),
          Text("Repo Url : \n${profile.reposUrl}",
              style: customTextStyle(context, 14, null, FontWeight.w400, 1.4)),
          SizedBox(
            height: 20.h,
          ),
          Text("Twitter Handle : \n${profile.twitterUsername}",
              style: customTextStyle(context, 14, null, FontWeight.w400, 1.4)),
          SizedBox(
            height: 20.h,
          ),
          Text("Created At : \n${profile.createdAt}",
              style: customTextStyle(context, 14, null, FontWeight.w400, 1.4)),
          SizedBox(
            height: 20.h,
          ),
          Text("Updated At : \n${profile.updatedAt}",
              style: customTextStyle(context, 14, null, FontWeight.w400, 1.4)),
        ],
      );
    }
  }
}
