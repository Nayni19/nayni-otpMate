import 'package:flutter/material.dart';

class PopUpItem extends StatelessWidget {
  final Object tag;
  final Widget child;
  final Color color;
  final double elevation;
  final EdgeInsetsGeometry padding;
  final ShapeBorder shape;
  PopUpItem({
    Key? key,
    required this.tag,
    required this.child,
    required this.color,
    required this.padding,
    required this.shape,
    this.elevation = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Hero(
          tag: tag,
          child: Material(
            color: color,
            elevation: elevation,
            shape: shape,
            child: SingleChildScrollView(
              child: Padding(
                padding: padding,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}