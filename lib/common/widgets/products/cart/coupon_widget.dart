import 'package:flutter/material.dart';
import 'package:sos/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sos/utils/constants/colors.dart';
import 'package:sos/utils/constants/sizes.dart';
import 'package:sos/utils/helpers/helper_functions.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.white,
      padding: const EdgeInsets.only(top: TSizes.sm, bottom: TSizes.sm, right: TSizes.sm, left: TSizes.md),
        child: Row(
          children: [
            /// TextField
            Flexible(
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'กรอกรหัสคูปองส่วนลด',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
    
            /// Button
            SizedBox(
              width: 80,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  foregroundColor: dark ? TColors.white.withOpacity(0.5) : TColors.dark.withOpacity(0.5),
                  // ignore: deprecated_member_use
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  // ignore: deprecated_member_use
                  side: BorderSide(color: Colors.grey.withOpacity(0.5))
                ),
                child: const Text('Apply'),
              ),
            ),
          ],
        ),
    );
  }
}