class SafariModel {
  final String name;
  final double price;
  final String location;
  final String imagePath;

  SafariModel({
    this.name,
    this.price,
    this.location,
    this.imagePath,
  });

  static List<SafariModel> list = [
    SafariModel(
      name: "Flamingo",
      price: 245.0,
      location: "Matara",
      imagePath: "flamingo.jpg",
    ),
    SafariModel(
      name: "White Nike",
      price: 245.0,
      location: "Honolulu",
      imagePath: "bird.jpg",
    ),
    SafariModel(
      name: "Lion",
      price: 245.0,
      location: "Amazonia",
      imagePath: "lion.jpg",
    ),
    SafariModel(
      name: "Marigold",
      price: 245.0,
      location: "Amstrong River",
      imagePath: "marigold.jpg",
    ),
    SafariModel(
      name: "Naples",
      price: 245.0,
      location: "Naples River",
      imagePath: "mountain.jpg",
    ),
    SafariModel(
      name: "Lake",
      price: 245.0,
      location: "Massai",
      imagePath: "view.jpg",
    ),
    SafariModel(
      name: "Bridgeway",
      price: 245.0,
      location: "BridgeWay",
      imagePath: "bridge.jpg",
    ),
  ];

  static List<SafariModel> navList = [
    SafariModel(
      name: "Ontaria",
      price: 245.0,
      location: "BridgeWay",
      imagePath: "nv1.jpg",
    ),
    SafariModel(
      name: "Benoni",
      price: 245.0,
      location: "Benoni",
      imagePath: "nv2.jpg",
    ),
    SafariModel(
      name: "Brekpan",
      price: 245.0,
      location: "Brekpan",
      imagePath: "nv3.jpg",
    ),
    SafariModel(
      name: "Carletonville",
      price: 245.0,
      location: "Carletonville",
      imagePath: "nv4.jpg",
    ),
    SafariModel(
      name: "Krugersdorp",
      price: 245.0,
      location: "Krugersdorp",
      imagePath: "nv5.jpg",
    ),
    SafariModel(
      name: "Germiston",
      price: 245.0,
      location: "Germiston",
      imagePath: "nv6.jpg",
    ),
  ];
}
