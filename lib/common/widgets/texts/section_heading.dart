// ignore_for_file: deprecated_member_use
//import 'package:sos/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter/material.dart';
//import 'package:iconsax/iconsax.dart';
//import 'package:iconsax/iconsax.dart';
//import 'package:sos/common/widgets/appbar/appbar.dart';
//import 'package:sos/common/widgets/custom_shapes/containers/circular_container.dart';
//import 'package:sos/utils/constants/colors.dart';
//import 'package:sos/common/widgets/custom_shapes/curved_edgges/curved_edges.dart';
//import 'package:sos/common/widgets/custom_shapes/containers/primary_header_container.dart';
//import 'package:sos/features/authentication/screens/home/widgets/home_appbar.dart';
//import 'package:sos/utils/constants/colors.dart';
//import 'package:sos/utils/constants/colors.dart';
//import 'package:sos/utils/constants/text_strings.dart';
//import 'package:sos/common/widgets/custom_shapes/curved_edgges/curved_edges_widgets.dart';
//import 'package:sos/utils/constants/sizes.dart';
//import 'package:sos/utils/device/device_utillity.dart';
//import 'package:sos/common/widgets/custom_shapes/containers/search_container.dart';


class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.onPressed,
    this.textColor,
    this.buttonTitle = 'View all',
    required this.title,
    this.showActionButton = true,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor), maxLines: 1, overflow: TextOverflow.ellipsis),

        if (showActionButton) TextButton(onPressed: onPressed, child: Text(buttonTitle)),
      ],
    ); 
  }
}