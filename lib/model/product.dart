class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product(
      {required this.id,
        required this.price,
        required this.title,
        required this.subTitle,
        required this.description,
        required this.image});
}

// list of products
List<Product> products = [
  Product(
    id: 1,
    price: 59,
    title: "Wireless headphones",
    subTitle: "high quality sound",
    image: "images/airpod.png",
    description:
    "Lorem Epsom Dollar Set Amit, Consecrator Adaiba Isking Alite, Set De Iosmod Tempur Ankidionteut Laborit At Dollars Magna Aliquia.",
  ),
  Product(
    id: 2,
    price: 1099,
    title: "mobile device",
    subTitle: "And mobile became powerful",
    image: "images/mobile.png",
    description:
    "Lorem Epsom Dollar Set Amit, Consecrator Adaiba Isking Alite, Set De Iosmod Tempur Ankidionteut Laborit At Dollars Magna Aliquia.",
  ),
  Product(
    id: 3,
    price: 39,
    title: "3D glasses",
    subTitle: "Take you to the virtual world",
    image: "images/class.png",
    description:
    "Lorem Epsom Dollar Set Amit, Consecrator Adaiba Isking Alite, Set De Iosmod Tempur Ankidionteut Laborit At Dollars Magna Aliquia.",
  ),
  Product(
    id: 4,
    price: 56,
    title: "Headphones",
    subTitle: "لlong listening hours",
    image: "images/headset.png",
    description:
    "Lorem Epsom Dollar Set Amit, Consecrator Adaiba Isking Alite, Set De Iosmod Tempur Ankidionteut Laborit At Dollars Magna Aliquia.",
  ),
  Product(
    id: 5,
    price: 68,
    title: "Voice Recorder",
    subTitle: "Record the important moments around you",
    image: "images/speaker.png",
    description:
    "Lorem Epsom Dollar Set Amit, Consecrator Adaiba Isking Alite, Set De Iosmod Tempur Ankidionteut Laborit At Dollars Magna Aliquia.",
  ),
  Product(
    id: 6,
    price: 39,
    title: "computer cameras",
    subTitle: "High image quality and resolution",
    image: "images/camera.png",
    description:
    "Lorem Epsom Dollar Set Amit, Consecrator Adaiba Isking Alite, Set De Iosmod Tempur Ankidionteut Laborit At Dollars Magna Aliquia.",
  ),
];

List<Product> Chartproducts=[

];
