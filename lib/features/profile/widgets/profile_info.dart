import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/utils/app_text.dart';
import '../../../core/widgets/app_svg.dart';
import '../../../core/utils/assets.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: Row(
        children: [
          _buildAvatar(),
          const SizedBox(width: 16),
          _buildUserDetails(context),
          const Spacer(),
          _buildEditButton(context),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return Container(
      width: 64,
      height: 64,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: ClipOval(
        child: AppSvg(assetName: Assets.imagesProfile, fit: BoxFit.cover),
      ),
    ).animate().scale(duration: 500.ms, curve: Curves.easeOutBack);
  }

  Widget _buildUserDetails(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Asmar Ajlouni', style: AppText().h2(context))
            .animate()
            .fade(duration: 400.ms, delay: 200.ms)
            .slideX(begin: -0.1),
        const SizedBox(height: 4),
        Text(
          '+962 234 567 2349',
          style: AppText().body(
            context,
            color: AppColors.gold,
            weight: FontWeight.w500,
          ),
        )
            .animate()
            .fade(duration: 400.ms, delay: 300.ms)
            .slideX(begin: -0.1),
      ],
    );
  }

  Widget _buildEditButton(BuildContext context) {
    return Text(
      'Edit',
      style: AppText().body(
        context,
        color: AppColors.gold,
        weight: FontWeight.w500,
      ),
    )
        .animate(onPlay: (controller) => controller.repeat(reverse: true))
        .shimmer(duration: 1500.ms, delay: 1000.ms);
  }
}
