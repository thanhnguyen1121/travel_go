abstract class DestinationModel {
  int id;
  String imageUrl;
  String title;
  double rate;
  String durationDescription;
  int flights;
  int hotel;
  int transfer;
  int activity;
  List<String> description;
  double price;

  DestinationModel({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.rate,
    required this.durationDescription,
    required this.flights,
    required this.hotel,
    required this.transfer,
    required this.activity,
    required this.description,
    required this.price,
  });
}
