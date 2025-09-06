import 'package:flutter/material.dart';

class CustomIconCard extends StatelessWidget {
  final Widget icon;
  final String text;
  final double iconSize;
  final TextStyle? textStyle;
  final Color borderColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const CustomIconCard({
    Key? key,
    required this.icon,
    required this.text,
    this.iconSize = 48.0,
    this.textStyle,
    this.borderColor = const Color(0xFFE0E0E0),
    this.borderRadius = 8.0,
    this.padding = const EdgeInsets.symmetric(vertical: 16.0, horizontal: 19.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
        decoration: BoxDecoration(
        // ignore: deprecated_member_use
          border: Border.all(color: borderColor.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: iconSize,
              width: iconSize,
              child: FittedBox(child: icon),
            ),
          const SizedBox(height: 8),
          Text(
            text,
            style:
            textStyle ??
            const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
