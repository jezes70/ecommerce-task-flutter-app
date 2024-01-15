class Product {
  final int id;
  final String name;
  final String description;
  final String image;
  final double price;

  Product(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.image});
}

class GetProduct {
  static List<Product> products = [
    Product(
        id: 1,
        name: 'Laptop',
        description: 'Powerful laptop for all your computing needs.',
        price: 899.99,
        image: 'images/Laptop Computer.jpg'),
    Product(
        id: 2,
        name: 'Smartphone',
        description: 'Latest smartphone with advanced features.',
        price: 699.99,
        image: 'images/Phone.jpeg'),
    Product(
        id: 3,
        name: 'Headphones',
        description:
            'Noise-canceling headphones for immersive audio experience.',
        price: 149.99,
        image: 'images/Head Set.jpeg'),
    Product(
        id: 4,
        name: 'Fitness Tracker',
        description: 'Track your fitness activities and stay healthy.',
        price: 79.99,
        image: 'images/Fitness Tracker.jpeg'),
    Product(
        id: 5,
        name: 'Coffee Maker',
        description: 'Automatic coffee maker for your daily caffeine fix.',
        price: 49.99,
        image: 'images/Auto Drip Coffee Maker.jpeg'),
    Product(
        id: 6,
        name: 'Bluetooth Speaker',
        description: 'Portable speaker for music on the go.',
        price: 29.99,
        image: 'images/Sound Box.jpeg'),
    Product(
        id: 7,
        name: 'Wireless Mouse',
        description: 'Ergonomic wireless mouse for comfortable usage.',
        price: 19.99,
        image: 'images/WirelessMouse.jpeg'),
    Product(
        id: 8,
        name: 'External Hard Drive',
        description: 'Expand your storage with a high-capacity external drive.',
        price: 129.99,
        image: 'images/Hard Drive.jpeg'),
    Product(
        id: 9,
        name: 'Work Space',
        description: 'Comfortable chair for long hours of work or gaming.',
        price: 149.99,
        image: 'images/Work Space.jpeg'),
    Product(
        id: 10,
        name: 'Backpack',
        description: 'Spacious backpack for carrying your essentials.',
        price: 39.99,
        image: 'images/Back Pack.jpg'),
  ];
}
