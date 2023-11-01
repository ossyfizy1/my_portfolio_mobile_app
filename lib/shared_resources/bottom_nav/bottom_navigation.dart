import 'package:flutter/material.dart';
import 'package:my_portfolio/shared_resources/bottom_nav/model/menu_title_and_icon.dart';
import 'package:my_portfolio/shared_resources/style/text_style.dart';

class BottomNavigation extends StatefulWidget {
  final Function(int?) switchViews;
  const BottomNavigation({super.key, required this.switchViews});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  List<MenuTitleAndIcons> menuTitles = [
    MenuTitleAndIcons(img: Icons.cloud_circle, title: "GitHub"),
    MenuTitleAndIcons(img: Icons.person, title: "Profile"),
    MenuTitleAndIcons(img: Icons.edit_document, title: "Project"),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 10, right: 30, bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(menuTitles.length,
                  (index) => menuWidget(param: menuTitles[index], index: index))
            ],
          )
        ],
      ),
    );
  }

  menuWidget({required MenuTitleAndIcons param, required int index}) {
    return GestureDetector(
      onTap: () {
        widget.switchViews(index);
        setState(() {
          currentIndex = index;
        });
      },
      child: Column(
        children: [
          Icon(
            param.img,
            size: 32,
            color: currentIndex == index
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.inversePrimary,
          ),
          Text(param.title,
              style: customTextStyle(
                  context,
                  12,
                  currentIndex == index
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.inversePrimary,
                  FontWeight.w500,
                  1.4)),
        ],
      ),
    );
  }
}
