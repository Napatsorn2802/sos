import 'package:flutter/material.dart';
import 'package:sos/common/widgets/custom_shapes/curved_edgges/curved_edges.dart';

// ignore: use_key_in_widget_constructors
class TCurvedEdgeWidget extends StatelessWidget {
  const TCurvedEdgeWidget({
    super.key, this.child,
  });

final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child,
    );
  }
}