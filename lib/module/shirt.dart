class Tshirt {
  final String name;
  final String price;
  final String imagepath;
  final String rating;
  final String size;
  final String description;

  Tshirt(
      {required this.name,
      required this.price,
      required this.imagepath,
      required this.rating,
      required this.size,
      required this.description});

  String get _name => name;
  String get _price => price;
  String get _imagepath => imagepath;
  String get _rating => rating;
  String get _size => size;
  String get _description => description;
}
