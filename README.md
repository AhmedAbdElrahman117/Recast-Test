# AlterNow - Flutter Pixel-Perfect UI Clone

A highly responsive, animated, pixel-perfect Flutter application replicating a sophisticated e-commerce/loyalty mobile app UI. This project has been crafted without comments to showcase clean code readability, adhering strictly to a feature-first architectural pattern and emphasizing highly reusable components.

## Table of Contents
- [Architecture & Structure](#architecture--structure)
- [Key Features](#key-features)
- [Responsive Typography](#responsive-typography)
- [State Management](#state-management)
- [Running the App](#running-the-app)

## Architecture & Structure

The codebase is organized using a **Feature-First Architecture**, ensuring maintainability and scalability across growing applications.

\\\
lib/
 core/
    theme/          # AppColors, static thematic properties
    utils/          # Responsive AppText singleton
    widgets/        # Reusable elements: AppSvg, CircularIconButton
 features/
    home/           # HomeScreen, VenueGrid, LoyaltyCard
    navigation/     # MainScreen handling bottom navigation
    profile/        # ProfileScreen, HistoryCard, ProfileInfo
 main.dart           # App entry point
\\\

## Key Features

1. **State Management**: Built efficiently using \ValueNotifier\ to toggle the \IndexedStack\ for the primary bottom navigation flow. Zero third-party state managers are utilized to keep dependencies minimal.
2. **Dynamic UI Rendering**: Leverages \lutter_staggered_grid_view\ to render complex Masonry-style layouts smoothly.
3. **Immersive Animations**: Integrates \lutter_animate\ to deploy sequential staggering, fading, sliding, and shimmering effects directly to widgets for maximum user delight.
4. **SVG Asset Handling**: Uses a customized \AppSvg\ wrapper built strictly on \lutter_svg\ avoiding network layouts for optimized, crisp visuals across all screen resolutions.
5. **Robust Routing**: Employs \PopScope\ intercepts ensuring smooth Android & iOS navigation tracking (intercepts back button when on profile to route to home).

## Responsive Typography

A hallmark of this project is the **AppText Singleton**. Every \TextStyle\ relies implicitly on context-aware scaling methods (\AppText().h1(context)\). As screen widths expand or contract, the text scales accordingly, ensuring absolute consistency whether deployed on a small Android device or a larger iPhone Pro.

## Models

All dynamic data rendered throughout the views (Venue Grids, Transaction Histories) are safely modeled:
- \VenueModel\ provides category, height mappings, and SVG pathways.
- \HistoryModel\ secures transactions rendering strings accurately in robust \RichText\ elements.

## Running the App

To run the app locally, ensure your environment meets the \sdk: ^3.11.0\ requirement:

\\\ash
flutter clean
flutter pub get
flutter run
\\\

Compatible directly out of the box with Android, iOS, Windows, and Web.
