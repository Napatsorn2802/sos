
import 'package:flutter/material.dart';
import 'package:sos/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:sos/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:sos/features/shop/screens/home/widgets/home_categories.dart';
import 'package:sos/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:sos/utils/constants/image_strings.dart';
import 'package:sos/utils/constants/sizes.dart';
import 'package:sos/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sos/common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header Tutoria
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar Tutorial
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  ///--Searchbar Tutorial
                  const TSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Categories Tutorial 
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // -- Heading
                        const TSectionHeading(title: 'Popular Categories',showActionButton: false, textColor: Colors.white),
                        const SizedBox(height: TSizes.spaceBtwItems),
                        
                        // Categories
                        THomeCategortes()
                        
                      ],
                    ),
                  ) 
                ],
              ),
            ),
              // body 35 หน้าที่จะมีสินค้าเลื่อนๆตรงหน้าโฮม
Padding(
  padding: const EdgeInsets.all(TSizes.defaultSpace),
  child: TPromoSlider(banners: [TImages.promoBanner1,TImages.promoBanner2,TImages.promoBanner3],),
),

          ]
      )
      )
        );
  }
}


