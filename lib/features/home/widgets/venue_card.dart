import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/utils/app_text.dart';
import '../../../core/widgets/circular_icon_button.dart';
import '../../../core/widgets/app_svg.dart';

class VenueCard extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String name;
  final double height;

  const VenueCard({
    super.key,
    required this.imageUrl,
    required this.category,
    required this.name,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(24),
        splashColor: AppColors.gold.withValues(alpha: 0.1),
        highlightColor: AppColors.gold.withValues(alpha: 0.1),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: SizedBox(
            height: height,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                _buildBackgroundImage(),
                Stack(
                  children: [
                    _buildDetails(context),
                    _buildNavigateButton(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.black.withValues(alpha: 0.3),
        BlendMode.darken,
      ),
      child: AppSvg(assetName: imageUrl, fit: BoxFit.cover),
    );
  }

  Widget _buildDetails(BuildContext context) {
    return Positioned(
      left: 16,
      bottom: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category,
            style: AppText().overline(
              context,
              color: AppColors.primaryText,
            ),
          ),
          Text(
            name,
            style: AppText().h3(context, color: AppColors.gold),
          ),
        ],
      ),
    );
  }

  Widget _buildNavigateButton() {
    return Positioned(
      right: 16,
      bottom: 20,
      child: CircularIconButton(
        icon: Icons.arrow_forward_ios,
        iconColor: AppColors.gold,
        backgroundColor: Colors.black.withValues(alpha: 0.4),
        borderColor: AppColors.secondaryText.withValues(
          alpha: 0.5,
        ),
        borderWidth: 1.0,
        padding: 8.0,
        size: 14.0,
      ),
    );
  }
}
