import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sos/features/shop/screens/cart/cart.dart';
import 'package:sos/utils/constants/colors.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key, 
    this.iconColor,
    this.counterBgColor, 
    this.counterTextColor,
    required this.onPressed,
  });

  final Color? iconColor,counterBgColor,counterTextColor;
  final VoidCallback onPressed;
  

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(() => const CartScreen()), icon: Icon(Iconsax.shopping_cart, color: iconColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: TColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white, fontSizeFactor: 0.8)),//เลขบนตรงตะกร้า
            ),
          ),
        ),
      ],
    );
  }
}