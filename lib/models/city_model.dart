class CityModel {
  int id;
  String name;
  String imageUrl;
  bool isFavorite;

  CityModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    this.isFavorite = false,
  });
}
