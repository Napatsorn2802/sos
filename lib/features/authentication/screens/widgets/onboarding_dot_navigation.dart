import 'package:flutter/material.dart';
//import 'package:sos/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:sos/utils/constants/colors.dart';
import 'package:sos/utils/constants/sizes.dart';
import 'package:sos/utils/device/device_utillity.dart';
import 'package:sos/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instonce;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick, // PageController
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.light :TColors.dark,
          dotHeight: 6),
      ),
    );
  }
}

class OnboardingController {
  static get instonce => null;
}