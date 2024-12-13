import 'package:flutter/material.dart';
import 'package:vonc/view/pages/Shopping_cart_page.dart';
import 'package:vonc/view/pages/living_Essentials.dart';

class Fruits extends StatefulWidget {
  const Fruits({super.key});

  @override
  State<Fruits> createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  bool isExpanded = false;
  List<bool> _ratedItems = List.filled(10, false);

  bool _isFavorited = false;

  bool _isRated = false;

  final List<Fruit> fruits = [
    Fruit(
      'Apple',
      'assets/img/living_essentails/fruits/apples-removebg-preview.png',
      1.99,
      'A juicy and delicious apple, perfect for snacking.',
      4.5,
    ),
    Fruit(
      'Banana',
      'assets/img/living_essentails/fruits/bannas-removebg-preview.png',
      0.99,
      'A classic yellow banana, great for breakfast or as a snack.',
      4.5,
    ),
    Fruit(
      'Cherry',
      'assets/img/living_essentails/fruits/cherrys-removebg-preview.png',
      2.99,
      'A sweet and tangy cherry, perfect for baking or as a topping.',
      4.5,
    ),
    Fruit(
      'Date',
      'assets/img/living_essentails/fruits/dates-removebg-preview.png',
      1.49,
      'A sweet and nutritious date, great for snacking or as a natural sweetener.',
      4.5,
    ),
    Fruit(
      'Elderberry',
      'assets/img/living_essentails/fruits/Elderberrys-removebg-preview.png',
      3.99,
      'A tart and flavorful elderberry, perfect for making jams and preserves.',
      4.5,
    ),
    Fruit(
      'Fig',
      'assets/img/living_essentails/fruits/Figs-removebg-preview.png',
      2.49,
      'A sweet and jammy fig, great for snacking or as a topping.',
      4.5,
    ),
    Fruit(
      'Grape',
      'assets/img/living_essentails/fruits/Grapes-removebg-preview.png',
      1.99,
      'A juicy and sweet grape, perfect for snacking or as a topping.',
      4.5,
    ),
    Fruit(
      'Guava',
      'assets/img/living_essentails/fruits/Guavas-removebg-preview.png',
      2.99,
      'A tropical and flavorful guava, great for making jams and preserves.',
      4.5,
    ),
    Fruit(
      'Jackfruit',
      'assets/img/living_essentails/fruits/Jackfruits-removebg-preview.png',
      3.99,
      'A large and versatile jackfruit, perfect for making curries and stews.',
      4.5,
    ),
    Fruit(
      'Kiwi',
      'assets/img/living_essentails/fruits/Kiwi-removebg-preview.png',
      1.99,
      'A sweet and tangy kiwi, great for snacking or as a topping.',
      4.5,
    ),
  ];

  List<bool> _favoritedItems = [];
  List<Fruit> _favoritedFruits = [];

  @override
  void initState() {
    super.initState();
    _favoritedItems = List.filled(fruits.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/icons/VFruits-LETTER.png",
                height: 50,
                width: 60,
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ShoppingCartPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final fruit = fruits[index];
            return GridTile(
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (BuildContext context) {
                      return DraggableScrollableSheet(
                        initialChildSize: 0.5,
                        minChildSize: 0.5,
                        maxChildSize: 1,
                        builder: (BuildContext context,
                            ScrollController scrollController) {
                          return Container(
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              color: Colors.greenAccent.shade700,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: SingleChildScrollView(
                              controller: scrollController,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.greenAccent.shade700,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    )),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          fruit.name,
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        IconButton(
                                          icon: const Icon(
                                            Icons.shopping_cart,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const ShoppingCartPage(),
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        fruit.image,
                                        height: 200,
                                        width: 200,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            fruit.name,
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            'Price: \$${fruit.price}',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                        ]),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        fruit.description,
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isExpanded = !isExpanded;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        height: 70,
                                        width: isExpanded ? 220 : 90,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                isExpanded ? 60 : 30),
                                            color: isExpanded
                                                ? Colors.amberAccent
                                                : Colors.black
                                                    .withOpacity(0.2)),
                                        child: Row(
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  isExpanded
                                                      ? Icons.check
                                                      : Icons.shopping_cart,
                                                  color: Colors.white,
                                                )),
                                            if (isExpanded)
                                              Text(
                                                'Add to Cart',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white),
                                              )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              icon: Icon(
                                _favoritedItems[index]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.red,
                              ),
                              onPressed: () {
                                setState(() {
                                  _favoritedItems[index] =
                                      !_favoritedItems[index];
                                  if (_favoritedItems[index]) {
                                    _favoritedFruits.add(fruit);
                                  } else {
                                    _favoritedFruits.remove(fruit);
                                  }
                                });
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Living_Essentials_Favourite(
                                                  favoritedFruits:
                                                      _favoritedFruits)),
                                    );
                                  },
                                );
                              })
                        ],
                      ),
                      Image.asset(
                        fruit.image,
                        fit: BoxFit.fill,
                        height: 59,
                        width: 59,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              fruit.name,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}

class Fruit {
  final String name;
  final String image;
  final double price;
  final double rating;
  final String description;

  Fruit(this.name, this.image, this.price, this.description, this.rating);
}
