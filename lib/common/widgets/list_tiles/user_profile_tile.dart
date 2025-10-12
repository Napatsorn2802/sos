
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sos/utils/constants/colors.dart';
import 'package:sos/utils/constants/image_strings.dart';
import 'package:sos/common/widgets/images/t_circular_image.dart';

class TUserProfileTile extends StatelessWidget {
  final VoidCallback? onPressed;

  const TUserProfileTile({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed, 
      leading: const TCircularImage(image: TImages.user),
      title: const Text(
        'สมศรี',
        style: TextStyle(fontWeight: FontWeight.bold, color: TColors.white),
      ),
      subtitle: const Text(
        'somsri@gmail.com',
        style: TextStyle(color: Colors.white70),
      ),
     
      trailing:  Icon(Iconsax.edit, color: TColors.white,),
    );
  }
}
