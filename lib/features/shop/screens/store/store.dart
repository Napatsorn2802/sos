/*import 'package:flutter/material.dart';
import 'package:sos/common/widgets/appbar/appbar.dart';
import 'package:sos/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sos/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sos/common/widgets/layouts/grid_layout.dart';
import 'package:sos/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:sos/common/widgets/texts/section_heading.dart';
import 'package:sos/utils/constants/colors.dart';
import 'package:sos/utils/constants/sizes.dart';
import 'package:sos/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCartCounterIcon(onPressed: () {}, iconColor: null),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: isDark ? TColors.black : TColors.white,
              expandedHeight: 160,

              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: TSizes.spaceBtwItems),
                      TSearchContainer(
                        text: 'ค้นหาสินค้าในร้าน',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(height: TSizes.spaceBtwSections),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },

        /// ✅ เนื้อหาหลัก (ใต้ SliverAppBar)
        body: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// หัวข้อสินค้าเด่น
              TSectionHeading(
                title: 'ประเภทสินค้า',
                showActionButton: true,
                onPressed: () {
                
                }, Title: '',
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 1.5),

              TGridLayout(itemCount: 4, itemBuilder: ( _ , index) {
                return GestureDetector(
                  onTap: (){},
                  child: TRoundedContainer(....),
                );
              })

              /*GestureDetector(
                onTap: () {},
                child: TRoundedContainer(
                  padding: const EdgeInsets.all(TSizes.sm),
                  showBorder: true,
                  backgroundColor: Colors.transparent,
                  child: Row(
                    children: [
                      //Icon
                      TCircularImage(
                        isNetworkImage: false,
                        image: TImages.clothingIcon2,
                        backgroundColor: Colors.transparent,
                        overlayColor: THelperFunctions.isDarkMode(context) ? TColors.white: TColors.black,
                      ),
                      const SizedBox(width: TSizes.spaceBtwItems / 2),
                    //text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          const TBrandTitleWithVerifiedIcon(title: 'ต้นไม้ที่ออกผล',brandTextSize: TextSizes.large),//บอกหมวดหมู่สินค้า
                          Text(
                                '256 products',//บอกจำนวนสินค้าที่มีในหมวดหมู่นั้น
                                overflow: TextOverflow.ellipsis,
                               style:Theme.of(context).textTheme.labelMedium,
                          )
                      ],
                    )
                    ],),
                ),
              )*/
              
            ],
          ),
        ),
     ),
      
    );
  }
}

/*class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      padding: const EdgeInsets.all(TSizes.sm),
      decoration: BoxDecoration(
        color: THelperFunctions.isDarkMode(context)? TColors.black : TColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: const AssetImage(TImages.clothingIcon1),
        color: THelperFunctions.isDarkMode(context)? TColors.white: TColors.dark),
    );
  }
}*/*/
import 'package:flutter/material.dart';
import 'package:sos/common/widgets/appbar/appbar.dart';
import 'package:sos/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sos/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sos/common/widgets/layouts/grid_layout.dart';
import 'package:sos/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:sos/common/widgets/texts/section_heading.dart';
import 'package:sos/common/widgets/images/t_circular_image.dart'; 
import 'package:sos/common/widgets/texts/t_brand_text_with_verified_icon.dart';
import 'package:sos/utils/constants/colors.dart';
import 'package:sos/utils/constants/enums.dart';
import 'package:sos/utils/constants/sizes.dart';
import 'package:sos/utils/constants/image_strings.dart';
import 'package:sos/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCartCounterIcon(onPressed: () {}, iconColor: null),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: isDark ? TColors.black : TColors.white,
              expandedHeight: 440,

              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: TSizes.spaceBtwItems),
                      TSearchContainer(
                        text: 'ค้นหาสินค้าในร้าน',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(height: TSizes.spaceBtwSections),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },

        body: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// หัวข้อสินค้าเด่น
              TSectionHeading(
                title: 'ประเภทสินค้า',
                showActionButton: true,
                onPressed: () {
                 
                }, Title: '',
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 1.5),

              /// Grid รายการหมวดหมู่
              TGridLayout(
                itemCount: 4, mainAxisExtent: 80,itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () {},
                     child: TRoundedContainer(
                        padding: const EdgeInsets.all(TSizes.sm),
                       showBorder: true,
                     backgroundColor: Colors.transparent,
                      child: Row(
                          children: [
                            TCircularImage(
                              isNetworkImage: false,
                              image: TImages.clothingIcon2,
                              backgroundColor: Colors.transparent,
                              overlayColor: isDark ? TColors.white : TColors.black,
                            ),
                            const SizedBox(width: TSizes.spaceBtwItems / 2),

                           //text
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const TBrandTitleWithVerifiedIcon(
                                    title: 'ต้นไม้ที่ออกผล',
                                    brandTextSize: TextSizes.large,
                                  ),
                                  Text(
                                    '256 products',
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.labelMedium,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )

                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

