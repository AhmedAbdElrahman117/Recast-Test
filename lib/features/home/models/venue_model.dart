import '../../../core/utils/assets.dart';

class VenueModel {
  final String id;
  final String name;
  final String category;
  final String imageUrl;
  final double height;

  const VenueModel({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.height,
  });
}

final List<VenueModel> dummyVenues = [
  const VenueModel(
    id: '1',
    name: 'Ceano',
    category: 'Nikkei',
    imageUrl: Assets.imagesVenue1,
    height: 220,
  ),
  const VenueModel(
    id: '2',
    name: 'Nobiko',
    category: 'Restaurant',
    imageUrl: Assets.imagesVenue3,
    height: 250,
  ),
  const VenueModel(
    id: '3',
    name: 'Dovely',
    category: 'Casual',
    imageUrl: Assets.imagesVenue2,
    height: 260,
  ),
  const VenueModel(
    id: '4',
    name: 'Olivestree',
    category: 'Bakery',
    imageUrl: Assets.imagesVenue4,
    height: 230,
  ),
];
