import 'package:flutter/material.dart';
import 'package:sos/common/widgets/appbar/appbar.dart';
import 'package:sos/common/widgets/images/t_rounded_image.dart';
import 'package:sos/common/widgets/products/product_card/product_card_horizontal.dart';
import 'package:sos/common/widgets/texts/section_heading.dart';
import 'package:sos/features/shop/screens/product_details/widgets/bottom_add_to_cart.widget.dart';
import 'package:sos/utils/constants/image_strings.dart';
import 'package:sos/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const TRoundedImage(width: double.infinity, imageUrl: TImages. promoBanner1, applyImageRadius: true),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Sub-Categories
             Column(
                children: [
                  /// Heading
                  TSectionHeading(title: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: /*TBottomAddToCart()*/TSizes.spaceBtwItems),
                      itemBuilder: (context, index) => const TProductCardHorizontal()
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}