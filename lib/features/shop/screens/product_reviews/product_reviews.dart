import 'package:flutter/material.dart';
import 'package:sos/common/widgets/appbar/appbar.dart';
import 'package:sos/common/widgets/products/rating/rating_indicator.dart';
import 'package:sos/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:sos/features/shop/screens/product_reviews/widgets/user.review.dart';
import 'package:sos/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "คะแนนและบทวิจารณ์ได้รับการตรวจสอบแล้วและมาจากผู้ที่สั่งซื้อสินค้า.",
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 3.5),
              Text("12,611", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwSections),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
