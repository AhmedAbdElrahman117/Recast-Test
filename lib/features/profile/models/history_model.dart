import '../../../core/utils/assets.dart';

class HistoryModel {
  final String id;
  final String restaurantName;
  final String date;
  final String cost;
  final String credits;
  final String imageUrl;
  final String receivedCredits;

  const HistoryModel({
    required this.id,
    required this.restaurantName,
    required this.date,
    required this.cost,
    required this.credits,
    required this.imageUrl,
    required this.receivedCredits,
  });
}

final List<HistoryModel> dummyHistory = [
  const HistoryModel(
    id: '1',
    restaurantName: 'Nobiko Bistro',
    date: '06 Jan, 2025',
    cost: '125.32 JD',
    credits: '230 Credits',
    imageUrl: Assets.imagesVenue1,
    receivedCredits: '325 Credits',
  ),
  const HistoryModel(
    id: '2',
    restaurantName: 'Ceano Nikkei',
    date: '04 Jan, 2025',
    cost: '85.50 JD',
    credits: '150 Credits',
    imageUrl: Assets.imagesVenue2,
    receivedCredits: '200 Credits',
  ),
];
