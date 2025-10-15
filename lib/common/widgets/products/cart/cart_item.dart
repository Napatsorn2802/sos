
import 'package:flutter/material.dart';
import 'package:sos/common/widgets/images/t_rounded_image.dart';
import 'package:sos/common/widgets/texts/product_title_text.dart';
import 'package:sos/common/widgets/texts/t_brand_text_with_verified_icon.dart';
import 'package:sos/utils/constants/colors.dart';
import 'package:sos/utils/constants/image_strings.dart';
import 'package:sos/utils/constants/sizes.dart';
import 'package:sos/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
            /// Image
            TRoundedImage(
                imageUrl: TImages.productImage1,
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(TSizes.sm),
                backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkGrey : TColors.light,
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        const TBrandTitleWithVerifiedIcon(title: 'tree'),
                        const TProductTitleText(
                            title: 'ต้นมะเขือเทศ', maxLines: 1),
    
                       /* Text.rich(
                            TextSpan(
                            children: [
                                TextSpan(
                                    text: 'Color ',
                                    style: Theme.of(context).textTheme.bodySmall),
                                TextSpan(
                                    text: 'Green ',
                                    style: Theme.of(context).textTheme.bodyLarge),
                                TextSpan(
                                    text: 'Size ',
                                    style: Theme.of(context).textTheme.bodySmall),
                                TextSpan(
                                    text: 'UK 08 ',
                                    style: Theme.of(context).textTheme.bodyLarge),
                                    ],
                                ),
                            ),*/
                        ],
                    ),
                ),
            ],
        );
  }
}