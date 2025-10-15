import 'package:flutter/material.dart';
import 'package:sos/common/widgets/brand/brand_show_case.dart';
import 'package:sos/common/widgets/layouts/grid_layout.dart';
import 'package:sos/common/widgets/products/product_card/prosuct_card_vertical.dart';
import 'package:sos/common/widgets/texts/section_heading.dart';
import 'package:sos/utils/constants/image_strings.dart';
import 'package:sos/utils/constants/sizes.dart';


class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:[ Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// -- Brands 
            const TBrandShowcase(images: [TImages.productImage3, TImages.productImage2, TImages.productImage1]),
            const TBrandShowcase(images: [TImages.productImage3, TImages.productImage2, TImages.productImage1]),
            const SizedBox(height: TSizes.spaceBtwItems),
            /// -- Products
            TSectionHeading(title: 'สินค้าที่คุณอาจสนใจ', onPressed: (){}),
            const SizedBox(height: TSizes.spaceBtwItems),
            
            TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical()),
            const SizedBox(height: TSizes.spaceBtwSections),
          ],
        ), 
      ),
      ]
    ); 
  }
}