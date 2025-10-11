import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sos/common/widgets/appbar/appbar.dart';
import 'package:sos/common/widgets/brand/brand_card.dart';
import 'package:sos/common/widgets/layouts/grid_layout.dart';
import 'package:sos/common/widgets/texts/section_heading.dart';
import 'package:sos/utils/constants/sizes.dart';
import 'package:sos/features/shop/screens/brand/brand_products.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Heading
              const TSectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              // -- Brands
              TGridLayout(
                itemCount: 10,
                mainAxisExtent: 80, 
                itemBuilder: (context, index) => TBrandCard(
                  showBorder: true, onTap: () => Get.to(
                    () => const BrandProducts())
                    )
              ),
            ],
          ),
        ), 
      ), 
    );
  }
}