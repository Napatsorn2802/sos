import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sos/features/authentication/screens/widgets/onbaatding_next_button.dart';
//import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sos/features/authentication/screens/widgets/onboarding_skip.dart';
import 'package:sos/utils/constants/image_strings.dart';
//import 'package:sos/utils/constants/sizes.dart';
import 'package:sos/utils/constants/text_strings.dart';
import 'package:sos/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:sos/features/authentication/screens/widgets/onboarding_page.dart';
//import 'package:sos/utils/device/device_utillity.dart';
//import 'package:sos/utils/constants/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onboardingTitle1,
                subTitle: TTexts.onboardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onboardingTitle2,
                subTitle: TTexts.onboardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onboardingTitle3,
                subTitle: TTexts.onboardingSubTitle3,
              ),
            ],
          ),
          const OnboardingSkip(),

        /// DOT navigation SmoothPageIndicator
       //const OnBoardingDotNavigation(),
 
        const OnboardingNextButton(),
 
          /*Positioned(
            bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
            left: TSizes.defaultSpace,
            child: SmoothPageIndicator(
              controller: PageController(), 
              count: 3),
              effect: ExpandingDotsEffect(
                activeDotColor:dark ? 
                TColors.light: 
                TColors.dark,
                dotHeight: 6),
          ),*/
        ],
      ),
    );
  }
}
