// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sos/utils/constants/colors.dart';
import 'package:sos/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:sos/common/widgets/custom_shapes/curved_edgges/curved_edges_widget.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, 
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
       child: Container(
        color: TColors.primary,
 
         
          child: Stack(
            children: [
              /// Background Custom Shapes
              Positioned(top: -150, right: -250, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
              Positioned(top: 100, right: -300, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
              child,
            ],
          ),
        ),
      );
    
  }
}





 