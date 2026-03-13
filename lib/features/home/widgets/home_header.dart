import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/utils/app_text.dart';
import '../../../core/widgets/circular_icon_button.dart';

class HomeHeader extends StatelessWidget {
  final VoidCallback onProfileTap;

  const HomeHeader({super.key, required this.onProfileTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildGreetingText(context),
        _buildProfileButton(),
      ],
    );
  }

  Widget _buildGreetingText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome Back,',
          style: AppText().body(context, color: AppColors.secondaryText),
        ),
        const SizedBox(height: 4),
        Text(
          'Asmar Ajlouni',
          style: AppText().h1(
            context,
            color: AppColors.gold,
            weight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileButton() {
    return CircularIconButton(
      onTap: onProfileTap,
      icon: Icons.person_outline,
    );
  }
}
