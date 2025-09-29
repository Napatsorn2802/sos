import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:sos/common/styles/spacing_styles.dart';
import 'package:sos/common/widgets/login_signup/form_divider.dart';
//import 'package:sos/common/widgets/login_signup/susccess_screen/susccess_screen.dart';
import 'package:sos/features/authentication/screens/login/widgets/login_form.dart';
import 'package:sos/features/authentication/screens/login/widgets/login_header.dart';
import 'package:sos/utils/constants/sizes.dart';
import 'package:sos/utils/constants/text_strings.dart';
import 'package:sos/common/widgets/login_signup/social_buttons.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column( //form
            children: [
              // Logo, Title & sub-Title
              const TLoginHeader(),

              // Form
                const TLoginForm(),
              
              // Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),

              const SizedBox(height: TSizes.spaceBtwItems),
              
              // Footer
              const TSocialButtons() 
            ],
          ),
        ), 
      ), 
    ); 
  }
}