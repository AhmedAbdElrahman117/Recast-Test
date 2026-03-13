import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/utils/app_text.dart';

class ProfileHeader extends StatelessWidget {
  final VoidCallback onBackTap;

  const ProfileHeader({super.key, required this.onBackTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTitle(context),
          _buildSettingsIcon(),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return GestureDetector(
      onTap: onBackTap,
      child: Text('Your Profile', style: AppText().h1(context)),
    );
  }

  Widget _buildSettingsIcon() {
    return GestureDetector(
      onTap: onBackTap,
      child: const Icon(
        Icons.settings_outlined,
        color: AppColors.primaryText,
        size: 28,
      ).animate().rotate(duration: 600.ms, curve: Curves.easeOutBack),
    );
  }
}
