class Items {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Items(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Items(
      id: "id",
      name: "name",
      desc: "desc",
      price: 9999,
      color: "#33505a",
      image:
          "https://images.pexels.com/photos/2787341/pexels-photo-2787341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
];
