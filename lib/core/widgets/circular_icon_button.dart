import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class CircularIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final double size;
  final double padding;
  final Color iconColor;
  final Color borderColor;
  final double borderWidth;
  final Color? backgroundColor;

  const CircularIconButton({
    super.key,
    required this.icon,
    this.onTap,
    this.size = 24.0,
    this.padding = 12.0,
    this.iconColor = AppColors.primaryText,
    this.borderColor = AppColors.borderColor,
    this.borderWidth = 1.5,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
          border: Border.all(color: borderColor, width: borderWidth),
        ),
        child: Icon(icon, color: iconColor, size: size),
      ),
    );
  }
}
