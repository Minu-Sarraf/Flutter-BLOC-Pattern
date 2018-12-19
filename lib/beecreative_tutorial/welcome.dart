import 'package:flutter/material.dart';
import 'welcome_layout.dart';
import 'package:ui_tests/assets_repo/appcolors.dart';
import 'package:ui_tests/assets_repo/appphotos.dart';
import 'package:ui_tests/assets_repo/fontstyles.dart';
import 'welcome_end.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  PageController _pageController = new PageController(
    initialPage: 1
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: PageView(
          children: <Widget>[
            new WelcomeLayout(
              AppPhotos.welcAttendance,
              "Take Attendance",
              "No longer do you need to need the traditional approach to take attendance. With the all new BC APP, you can take attendance with ease. Just tap the kids that are absent and you are good to go!",
              AppFontStyles().gettingStartedAttendanceHeadStyle,
              AppFontStyles().gettingStartedBodyStyle,
              AppColors.welcAttendanceColor
            ),
            new WelcomeLayout(
              AppPhotos.welcPhotos,
              "Take Pictures",
              "No longer do you need to need the traditional approach to take attendance. With the all new BC APP, you can take attendance with ease. Just tap the kids that are absent and you are good to go!",
              AppFontStyles().gettingStartedPhotosHeadStyle,
              AppFontStyles().gettingStartedBodyStyle,
              AppColors.welcTakePhotosColor
            ),
            new WelcomeLayout(
              AppPhotos.welcRandomizer,
              "Randomize",
              "No longer do you need to need the traditional approach to take attendance. With the all new BC APP, you can take attendance with ease. Just tap the kids that are absent and you are good to go!",
              AppFontStyles().gettingStartedRandomizerHeadStyle,
              AppFontStyles().gettingStartedBodyStyle,
              AppColors.welcRandomizerColor
            ),
            new WelcomeEnd()
          ],
        ),
      ),
    );
  }
}