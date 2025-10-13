import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sos/common/widgets/texts/section_heading.dart';
import 'package:sos/features/shop/screens/product_details/widgets/bottom_add_to_cart.widget.dart';
import 'package:sos/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:sos/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:sos/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:sos/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:sos/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:sos/utils/constants/sizes.dart';
import 'package:sos/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            TProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- ปุ่มให้คะแนนและแชร์
                  TRatingAndShare(),

                  /// -- ราคา ชื่อ สต๊อก และยี่ห้อ
                  TProductMetaData(),
                  /// -- Attributes
                  TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // --- ปุ่มชำระเงิน
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: Text('ชำระเงิน'))),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // - คำอธิบาย
                  const TSectionHeading(title: 'คำอธิบาย', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  /*const ReadMoreText(
                    'ต้นมะเขือเทศจากจังหวัดสระบุรีเพาะปลูกจากมะเขือเทศพันดีรสชาติหวานอมเปรี้ยว.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),*/

                  //- Reviewsรีวิว
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(title: 'รีวิว (199)', showActionButton: false),
                      IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18), onPressed: () => Get.to(() => const ProductReviewsScreen())),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ), 
            )
          ],
        ),
      ),
    );
  }
}