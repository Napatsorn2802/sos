import 'package:flutter/material.dart';
import 'package:sos/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sos/common/widgets/images/t_circular_image.dart';
import 'package:sos/common/widgets/texts/t_brand_text_with_verified_icon.dart';
import 'package:sos/utils/constants/colors.dart';
import 'package:sos/utils/constants/enums.dart';
import 'package:sos/utils/constants/image_strings.dart';
import 'package:sos/utils/constants/sizes.dart';
import 'package:sos/utils/helpers/helper_functions.dart';


class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, 
    // required this.brand,
    required this.showBorder, 
    this.onTap,
  });


  // final BrandModel brand;
  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {

    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(TSizes.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // --- Icon
            Flexible(
              child: TCircularImage(
                // image: brand.image,
                isNetworkImage: false,
                image: TImages.litterIcon,
                backgroundColor: Colors.transparent,
                overlayColor: isDark ? TColors.white : TColors.black,
              ),
            ),
            const SizedBox (width: TSizes.spaceBtwItems / 1.5),
      
            /// -- Texts
            // [Expanded] & Column [MainAxisSize.min] is important to keep the elements in the vertical center and also
            // to keep text inside the boundaries.
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    // TBrandTitleWithVerifiedIcon(title: brand.name, brandTextSize: TextSizes.large),
                  const TBrandTitleWithVerifiedIcon(title: 'Bezz', brandTextSize: TextSizes.large),

                  Text(
                    '256 products with asjbsd sj',
                    // ${brand.productsCount ?? 0} products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                ),
              ],                                 ),
            ),
        ],
      ),
      ),
    );
  }
}