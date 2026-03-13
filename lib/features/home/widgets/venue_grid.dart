import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../models/venue_model.dart';
import 'venue_card.dart';

class VenueGrid extends StatelessWidget {
  const VenueGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: dummyVenues.length,
      itemBuilder: (context, index) {
        final venue = dummyVenues[index];
        return VenueCard(
          imageUrl: venue.imageUrl,
          category: venue.category,
          name: venue.name,
          height: venue.height,
        );
      },
    );
  }
}
