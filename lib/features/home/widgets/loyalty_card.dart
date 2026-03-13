import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/utils/app_text.dart';
import '../../../core/widgets/circular_icon_button.dart';
import '../../../core/widgets/app_svg.dart';
import '../../../core/utils/assets.dart';

class LoyaltyCard extends StatelessWidget {
  const LoyaltyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          const SizedBox(height: 24),
          _buildPointsAndProgress(context),
          const SizedBox(height: 20),
          _buildFooter(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('AlterNow', style: AppText().caption(context)),
            const SizedBox(height: 4),
            Text('Loyalty Points', style: AppText().title(context)),
          ],
        ),
        const CircularIconButton(
          icon: Icons.person_outline,
          padding: 8.0,
          size: 20.0,
        ),
      ],
    );
  }

  Widget _buildPointsAndProgress(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('21,750', style: AppText().points(context))
            .animate(onPlay: (controller) => controller.repeat(reverse: true))
            .shimmer(duration: 2000.ms, color: Colors.white, delay: 1000.ms),
        const SizedBox(height: 12),
        Container(
          height: 16,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: 0.65,
            child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppColors.accent, AppColors.gold],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Total Orders ',
                  style: AppText().bodySmall(context),
                ),
                Text(
                  '24',
                  style: AppText().bodySmall(
                    context,
                    color: AppColors.gold,
                    weight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 32,
              width: 90,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: _buildAvatarStackItem(Assets.imagesLoyalty),
                  ),
                  Positioned(
                    left: 24,
                    child: _buildAvatarStackItem(Assets.imagesPoints1),
                  ),
                  Positioned(
                    left: 48,
                    child: _buildAvatarStackItem(Assets.imagesPoints2),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.primaryText),
          ),
          child: Row(
            children: [
              Text(
                'More details',
                style: AppText().caption(
                  context,
                  color: AppColors.primaryText,
                ),
              ),
              const SizedBox(width: 4),
              const Icon(
                Icons.arrow_forward,
                color: AppColors.primaryText,
                size: 14,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAvatarStackItem(String assetPath) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.surface, width: 2),
      ),
      child: ClipOval(
        child: AppSvg(assetName: assetPath, fit: BoxFit.cover),
      ),
    );
  }
}
