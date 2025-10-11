import 'package:flutter/material.dart';
import 'package:sos/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:sos/common/widgets/layouts/grid_layout.dart';
import 'package:sos/common/widgets/products/product_card/prosuct_card_vertical.dart';
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
            /// Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Search bar
                  const TSearchContainer(text: 'Search in Store', showBorder: false,),
                  const SizedBox(height: TSizes.spaceBtwSections),

                //   Categories 34
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        //หัว
                        TSectionHeading(title: 'Popular Categories',showActionButton: false,textColor: Colors.white, ),
                        SizedBox(height: TSizes.spaceBtwItems),
                          /// Categories
                        THomeCategortes(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body Section
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Promo Slider
                  const TPromoSlider(banners: [TImages.promoBanner1,TImages.promoBanner2,TImages.promoBanner3,], ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Popular Products Section
                  const TSectionHeading( title: 'Popular Products',showActionButton: true, ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                    //Popular Product 37
                    TGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const TProductCardVertical(),),

                ]
              )
            )
                ] 
        )
      )
    );
  }
}
             