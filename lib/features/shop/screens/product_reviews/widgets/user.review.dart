import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:sos/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sos/common/widgets/products/rating/rating_indicator.dart';
import 'package:sos/utils/constants/colors.dart';
import 'package:sos/utils/constants/image_strings.dart';
import 'package:sos/utils/constants/sizes.dart';
import 'package:sos/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        //ชื่อผู้รีวิว + ไอคอน
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(TImages.userProfileImage1),
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('สมศรี', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// ส่วนแสดงคะแนน + วันที่รีวิว
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('01 Oct, 2025', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// ข้อความรีวิวจากลูกค้า
        const ReadMoreText(
          'แพ็คสินค้าได้แน่นหนามากต้นไม้ไม่หักหรือช้ำเลย.', // คำอธิบายเกี่ยวกับสินค้า
          trimLines: 2,
          trimMode:TrimMode.Line,
          trimExpandedText: ' แสดงน้อยลง',
          trimCollapsedText: ' แสดงเพิ่มเติม',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary,
          ),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// ส่วนรีวิวจากร้านค้า
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// หัวข้อ: ชื่อร้าน + วันที่ตอบกลับ
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("สมเหตุสมผล?", style: Theme.of(context).textTheme.titleMedium),
                    Text('02 Oct, 2025', style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),

                /// ข้อความตอบกลับจากร้านค้า
                const ReadMoreText(
                  'ขอบคุณสำหรับรีวิวของคุณลูกค้านะครับ.', // ข้อความตอบกลับจากร้าน
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' แสดงน้อยลง',
                  trimCollapsedText: ' แสดงเพิ่มเติม',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}