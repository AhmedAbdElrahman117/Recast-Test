import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../core/utils/app_text.dart';
import '../widgets/home_header.dart';
import '../widgets/loyalty_card.dart';
import '../widgets/venue_grid.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback onProfileTap;

  const HomeScreen({super.key, required this.onProfileTap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                    [
                          HomeHeader(onProfileTap: onProfileTap),
                          const SizedBox(height: 24),
                          const LoyaltyCard(),
                          const SizedBox(height: 32),
                          Text('Venue Selection', style: AppText().h2(context)),
                          const SizedBox(height: 16),
                          const VenueGrid(),
                          const SizedBox(height: 32),
                        ]
                        .animate(interval: 100.ms)
                        .fade(duration: 500.ms)
                        .slideY(
                          begin: 0.1,
                          duration: 500.ms,
                          curve: Curves.easeOutQuad,
                        ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
