import 'package:flutter/material.dart';
import '../../home/screens/home_screen.dart';
import '../../profile/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ValueNotifier<int> _currentIndex = ValueNotifier<int>(0);

  @override
  void dispose() {
    _currentIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: _currentIndex,
        builder: (context, index, child) {
          return PopScope(
            canPop: index == 0,
            onPopInvokedWithResult: (didPop, result) {
              if (!didPop) {
                _currentIndex.value = 0;
              }
            },
            child: IndexedStack(
              index: index,
              children: [
                HomeScreen(onProfileTap: () => _currentIndex.value = 1),
                ProfileScreen(onBackTap: () => _currentIndex.value = 0),
              ],
            ),
          );
        },
      ),
    );
  }
}
