import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../core/utils/app_text.dart';
import '../models/history_model.dart';
import '../widgets/history_card.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';

class ProfileScreen extends StatelessWidget {
  final VoidCallback onBackTap;

  const ProfileScreen({super.key, required this.onBackTap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileHeader(onBackTap: onBackTap),
          const ProfileInfo(),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Loyalty History',
              style: AppText().title(context),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 8.0,
              ),
              itemCount: dummyHistory.length,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                return HistoryCard(history: dummyHistory[index])
                    .animate()
                    .fade(duration: 400.ms, delay: (index * 100).ms)
                    .slideX(
                      begin: 0.1,
                      duration: 400.ms,
                      delay: (index * 100).ms,
                      curve: Curves.easeOutQuad,
                    );
              },
            ),
          ),
        ]
        .animate(interval: 100.ms)
        .fade(duration: 400.ms)
        .slideY(
          begin: 0.05,
          duration: 400.ms,
          curve: Curves.easeOutQuad,
        ),
      ),
    );
  }
}
