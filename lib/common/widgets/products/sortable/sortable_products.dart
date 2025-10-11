import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sos/common/widgets/layouts/grid_layout.dart';
import 'package:sos/common/widgets/products/product_card/prosuct_card_vertical.dart';
import 'package:sos/utils/constants/sizes.dart';



class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value){},
          items: ['Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity']
            .map((option) => DropdownMenuItem(value: option, child: Text(option)))
            .toList(),
        ),
        const SizedBox (height: TSizes.spaceBtwSections),
        /// Products
        TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical()),
      ],
    );
  }
}