import 'package:flutter/material.dart';
//import 'package:sos/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:sos/utils/device/device_utillity.dart';
//import 'package:sos/utils/helpers/helper_functions.dart';
import 'package:sos/utils/constants/sizes.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () {}, 
        child: const Text('Skip'),
      ),
    );
  }
}