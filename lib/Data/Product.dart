class Product {
  final int id;
  final String name;
  final String description;
  final String image;
  final double price;
  final String category;

  Product(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.category,
      required this.image});
}

class GetProduct {
  static List<Product> products = [
    Product(
      id: 1,
      name: 'Laptop',
      description:
          'Experience the power of cutting-edge technology with our high-performance Laptop. Whether you are a professional, a student, or a creative enthusiast, this laptop is designed to meet all your computing needs. With a sleek design and powerful specifications, it ensures seamless multitasking and efficiency. Stay productive and entertained with the latest features and capabilities. Elevate your computing experience with our reliable and stylish laptop.',
      price: 899.99,
      image: 'images/Laptop Computer.jpg',
      category: 'Electronics',
    ),
    Product(
      id: 2,
      name: 'Smartphone',
      description:
          'Stay connected with the latest Smartphone featuring advanced technology and innovative features. Capture stunning photos, enjoy immersive multimedia, and experience smooth performance. The sleek design and cutting-edge hardware make this smartphone a must-have for tech enthusiasts. Elevate your communication and entertainment with the ultimate mobile experience.',
      price: 699.99,
      image: 'images/Phone.jpeg',
      category: 'Electronics',
    ),
    Product(
      id: 3,
      name: 'Headphones',
      description:
          'Immerse yourself in premium audio quality with our Noise-canceling Headphones. Designed for audiophiles and music lovers, these headphones deliver a rich and clear sound experience. The comfortable design ensures extended wear without fatigue, while the noise-canceling feature provides an immersive audio experience. Elevate your music and entertainment with these stylish and high-performance headphones.',
      price: 149.99,
      image: 'images/Head Set.jpeg',
      category: 'Electronics',
    ),
    Product(
        id: 4,
        name: 'Fitness Tracker',
        description:
            'Achieve your fitness goals with our Fitness Tracker. Monitor your activities, track your workouts, and stay motivated on your wellness journey. The sleek and lightweight design ensures comfort during wear, while the advanced features provide valuable insights into your health and fitness. Take charge of your well-being with this versatile and reliable fitness companion.',
        price: 79.99,
        image: 'images/Fitness Tracker.jpeg',
        category: 'Electronics'),
    Product(
      id: 5,
      name: 'Coffee Maker',
      description:
          'Start your day with the perfect cup of coffee using our Automatic Drip Coffee Maker. Designed for coffee enthusiasts, this appliance ensures a hassle-free brewing experience. The automatic features allow you to enjoy your favorite brew with minimal effort. Elevate your coffee ritual with this stylish and efficient coffee maker.',
      price: 49.99,
      image: 'images/Auto Drip Coffee Maker.jpeg',
      category: 'Electronics',
    ),
    Product(
      id: 6,
      name: 'Sound Bar Speaker',
      description:
          'Take your music on the go with our Portable Bluetooth Speaker. Experience high-quality sound and impressive bass in a compact and stylish design. Whether you are at home, in the park, or on the beach, this speaker delivers a premium audio experience. Elevate your music journey with this versatile and portable speaker.',
      price: 158.99,
      image: 'images/Sound Box.jpeg',
      category: 'Electronics',
    ),
    Product(
      id: 7,
      name: 'Wireless Mouse',
      description:
          'Enhance your computing experience with our Ergonomic Wireless Mouse. Designed for comfort and precision, this mouse ensures smooth navigation and reduces strain during extended use. The wireless feature provides convenience and flexibility in your workspace. Elevate your productivity with this reliable and user-friendly wireless mouse.',
      price: 19.99,
      image: 'images/WirelessMouse.jpeg',
      category: 'Electronics',
    ),
    Product(
      id: 8,
      name: 'External Hard Drive',
      description:
          'Expand your storage capacity with our high-capacity External Hard Drive. Ideal for backing up important files or expanding your digital library, this hard drive offers reliable and fast data storage. The sleek and compact design ensures portability without compromising on performance. Elevate your storage solutions with this efficient external hard drive.',
      price: 15.99,
      image: 'images/Hard Drive.jpeg',
      category: 'Electronics',
    ),
    Product(
      id: 9,
      name: 'Work Space',
      description:
          'Create a comfortable work or gaming space with our Ergonomic Work Space Chair. Designed for extended use, this chair provides support and comfort to enhance your focus and productivity. The adjustable features cater to your individual preferences, ensuring a personalized and ergonomic seating experience. Elevate your workspace with this stylish and functional chair.',
      price: 149.99,
      image: 'images/Work Space.jpeg',
      category: 'Furniture',
    ),
    Product(
      id: 10,
      name: 'Backpack',
      description:
          'Carry your essentials in style with our spacious Backpack. Perfect for work, school, or travel, this backpack combines functionality with a trendy design. With multiple compartments and durable construction, it provides ample storage space and ensures your belongings stay organized. The ergonomic design ensures comfort during extended use. Make a statement with this versatile and stylish backpack that complements your active lifestyle.',
      price: 39.99,
      image: 'images/Back Pack.jpg',
      category: 'Furniture',
    ),
  ];
}
