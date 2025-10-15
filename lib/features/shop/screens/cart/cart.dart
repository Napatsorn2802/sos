import 'package:flutter/material.dart';
import 'package:sos/common/widgets/appbar/appbar.dart';
import 'package:sos/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:sos/utils/constants/sizes.dart';

/*class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),

      // ✅ ใช้ ScrollView ครอบไว้เพื่อให้เลื่อนดูได้
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),

        // ✅ ListView.separated ใช้ shrinkWrap เพื่อไม่ให้มี overflow
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(), // ปิดการ scroll ซ้อนกัน
          itemCount: 4,
          separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections),
          
          // ✅ itemBuilder สำหรับแต่ละสินค้าภายในตะกร้า
          itemBuilder: (_, index) => Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // รูปสินค้า
              TRoundedImage(
                imageUrl: TImages.productImage1,
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(TSizes.sm),
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.darkerGrey
                    : TColors.light,
              ),
              const SizedBox(width: TSizes.spaceBtwItems),

              // ข้อมูลสินค้า
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(title: 'Tree'),
                  const TProductTitleText(title: 'Black Sports Shoes', maxLines: 1),
                  const SizedBox(height: 4),
                  
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Color: ',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const TextSpan(text: 'Black'),
                      ],
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
}*/

class CartScreen extends StatelessWidget {
    const CartScreen({super.key});

@override
Widget build(BuildContext context) {
    return Scaffold(
    appBar: TAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
        body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: TCartItems(),
            ),
        bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            // ignore: unnecessary_string_escapes
            child: ElevatedButton(onPressed: () {}, child: Text('Checkout \฿256.0')),
        ),
        );
    }
}
