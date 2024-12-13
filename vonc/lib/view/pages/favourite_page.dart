import 'package:flutter/material.dart';
import 'package:vonc/common_widget/data.dart';
import 'package:vonc/view/pages/cervices.dart';
import 'package:vonc/view/pages/food_page.dart';
import 'package:vonc/view/pages/living_Essentials.dart';
import 'package:vonc/view/pages/living_generals.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return CustomTabBarPage();
    // return DefaultTabController(
    //   initialIndex: 0,
    //   length: 4,
    //   child: Scaffold(
    //     backgroundColor: Colors.black,
    //     appBar: TabBar(
    //       indicator: ShapeDecoration(
    //           shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(50)),
    //           color: Colors.white),
    //       labelColor: Colors.indigoAccent,
    //       indicatorColor: Colors.transparent,
    //       tabs: const [
    //         Tab(
    //           icon: Icon(Icons.fastfood),
    //           child: Text("Food", style: TextStyle(fontSize: 12)),
    //         ),
    //         Tab(
    //             icon: Icon(Icons.local_grocery_store_outlined),
    //             child: Text(
    //               "Living Essentials",
    //               style: TextStyle(fontSize: 12),
    //             )),
    //         Tab(
    //           icon: Icon(Icons.watch),
    //           child: Text(
    //             "Living Generals",
    //             style: TextStyle(fontSize: 12),
    //           ),
    //         ),
    //         Tab(
    //           icon: Icon(Icons.work),
    //           child: Text(
    //             "cevices",
    //             style: TextStyle(fontSize: 12),
    //           ),
    //         ),
    //       ],
    //       labelStyle: const TextStyle(
    //         fontSize: 15,
    //         fontWeight: FontWeight.w500,
    //       ),
    //     ),
    //     body: const TabBarView(
    //       children: [
    //         FoodpageFavourite(),
    //         Living_Essentials_Favourite(),
    //         LivingGenerals_Favourite(),
    //         Cervices_Favourite(),
    //       ],
    //     ),
    //   ),
    // );
  }
}

class CustomTabBarPage extends StatefulWidget {
  @override
  State<CustomTabBarPage> createState() => _CustomTabBarPageState();
}

class _CustomTabBarPageState extends State<CustomTabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          CustomTabBar(
            controller: _tabController,
            tabs: const [
              Tab(icon: Icon(Icons.fastfood), text: "Food"),
              Tab(
                  icon: Icon(Icons.local_grocery_store_outlined),
                  text: "Essentials"),
              Tab(icon: Icon(Icons.watch), text: "Generals"),
              Tab(icon: Icon(Icons.work), text: "Cervices"),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                const FoodpageFavourite(),
               Living_Essentials_Favourite(favoritedFruits: [],),
                const LivingGenerals_Favourite(),
                const Cervices_Favourite(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTabBar extends StatelessWidget {
  final TabController controller;
  final List<Tab> tabs;

  const CustomTabBar({Key? key, required this.controller, required this.tabs})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          shape: BoxShape.rectangle,
          color: Colors.black,
        ),
        child: TabBar(
          controller: controller,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(60), shape: BoxShape.rectangle,
            // Rounded corners for indicator
            color: Colors.blueAccent.shade100,
          ),
          labelColor: Colors.blueAccent.shade700,
          unselectedLabelColor: Colors.white,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
          tabs: tabs.map((tab) {
            return Tab(
              icon: tab.icon,
              child: Text(tab.text ?? ""),
            );
          }).toList(),
        ),
      ),
    );
  }
}
