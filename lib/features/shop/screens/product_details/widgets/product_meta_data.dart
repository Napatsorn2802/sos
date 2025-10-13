import 'package:flutter/material.dart';
import 'package:sos/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sos/common/widgets/images/t_circular_image.dart';
import 'package:sos/common/widgets/texts/product_price_text.dart';
import 'package:sos/common/widgets/texts/product_title_text.dart';
import 'package:sos/common/widgets/texts/t_brand_text_with_verified_icon.dart';
import 'package:sos/utils/constants/colors.dart';
import 'package:sos/utils/constants/enums.dart';
import 'package:sos/utils/constants/image_strings.dart';
import 'package:sos/utils/constants/sizes.dart';
import 'package:sos/utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            // Sale Tap
            TRoundedContainer(
                    radius: TSizes.sm,
                    // ignore: deprecated_member_use
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                  ),
                const SizedBox(width: TSizes.spaceBtwItems),

                // Price
                Text(
                  '\฿25',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),//ราคา
                  const SizedBox(width: TSizes.spaceBtwItems),
                  TProductPriceText(price: '15', isLarge: true),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 1.5),

              /// Title
              const TProductTitleText(title: 'ต้นกล้ามะเขือเทศ'),
              const SizedBox(height: TSizes.spaceBtwItems / 1.5),

              /// Stock Status
              Row(
                children: [
                  const TProductTitleText(title: 'สถานะ'),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 1.5),

              /// Brand
              Row(
                children: [
                  TCircularImage(
                    image: TImages.productImage5, 
                    width: 32, 
                    height: 32,
                    overlayColor: darkMode ? TColors.white : TColors.black,
                    
                    ),
                  TBrandTitleWithVerifiedIcon(title: 'Tree', brandTextSize: TextSizes.medium),
                ],
              ),
      ],
    );
  }
}