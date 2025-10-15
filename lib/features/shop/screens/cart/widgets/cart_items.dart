import 'package:flutter/material.dart';
import 'package:sos/common/widgets/products/cart/add_remove_button.dart';
import 'package:sos/common/widgets/products/cart/cart_item.dart';
import 'package:sos/common/widgets/texts/product_price_text.dart';
import 'package:sos/utils/constants/sizes.dart';

/*class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    this.iconColor,
    this.counterBgColor,
    this.counterTextColor,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  final Color? iconColor, counterBgColor, counterTextColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(() => const CartScreen()), icon:Icon(Iconsax.shopping_cart),color:iconColor),//ไอคอนตะกร้า
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color:counterBgColor ?? (dark ? TColors.white : TColors.black),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        )
      ],
    );
  }
}*/
class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,  this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemCount: 2,
        separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections),
        itemBuilder: (_, index) => Column(
            children: [
                const  TCartItem(),
                if (showAddRemoveButtons) const SizedBox(height: TSizes.spaceBtwItems),
                    
                    // Add if (showAddRemoveButtons)
                    if (showAddRemoveButtons)
                    const  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Row(
                            children: [
                                // Extra Space
                                SizedBox(width: 70),
            
                                /// Add Remove Buttons
                                TProductQuantityWithAddRemoveButton(),
                            ],
                        ),
                        TProductPriceText(price: '256')
                    ],
                    ),
                ],
            ),
        );
  }
}