import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sos/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:sos/common/widgets/layouts/grid_layout.dart';
import 'package:sos/common/widgets/products/product_card/prosuct_card_vertical.dart';
import 'package:sos/features/shop/screens/all_products/all_products.dart';
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
                        const  THomeCategortes() 
                      ],
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            // Body -- Tutorial                       
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                TPromoSlider(banners: [//สินค้าโปรโมชั่น
                TImages.promoBanner1,TImages.promoBanner2, TImages.promoBanner3,
                TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3,]),
                const SizedBox(height: TSizes.spaceBtwSections),
                  // heading
                TSectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => const AllProducts())),
                const SizedBox(height: TSizes.spaceBtwItems),
                  // --- Popular Products -- Tutorial [Section # 3, Video # 7]
                  TGridLayout(itemCount: 4, itemBuilder: (_ , index) => const TProductCardVertical()), 
                ],
              )
              
            ),
          ],
        ),
      ),
    );
  }
}


  
             