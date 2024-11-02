class RestaurantModel {
  final int id;
  final String name;
  final double rating;
  final String image;
  final String deliveryTime;

  RestaurantModel(
      {required this.id,
      required this.name,
      required this.rating,
      required this.image,
      required this.deliveryTime});
}
