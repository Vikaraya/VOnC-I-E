import 'package:flutter/material.dart';
import 'package:vonc/view/pages/grocerys/categories/fruits.dart';

class AppData {
  AppData.init();

  static final List<String> innerStyleImages = [
    "assets/img/vonc_main_banner.jpg",
    "assets/img/vonc food banner.png",
    "assets/img/Green And Gold Overlay Fresh Foods Email Header.png",
    "assets/img/Fashion Sale Landscape Banner.png",
    "assets/img/cevices/VONC CAR CERVICES-min.png",
    "assets/icons/food .png",
  ];

  static final List<String> CategoriesStyleImages = [
    "assets/icons/food .png",
    "assets/icons/grocerys.png",
    "assets/icons/fashion.png",
    "assets/icons/cervices.png",
  ];

  static final List<String> CategoriesText = [
    "Food",
    "Living Essentails",
    "Living Generals",
    "Cevices",
  ];

  static final List<Color> borderColors = [
    const Color(0xFF5ce1e6),
    const Color(0xFF00bf63),
    const Color(0xFFffde59),
    const Color(0xFF545454),
  ];

  static final List<String> FoodImages = [
    "assets/img/food/vonc_m_f_1.png",
    "assets/img/food/vonc_m_f_2.png",
    "assets/img/food/vonc_m_f_3 .png",
    "assets/img/food/vonc_m_f_4.png",
  ];

  static final List<String> LivingEssentials = [
    "assets/img/living_essentails/VOnC LE Chicken.png",
    "assets/img/living_essentails/VOnC LE FLESH.png",
    "assets/img/living_essentails/VOnC LE EGGS.png",
    "assets/img/living_essentails/VOnC LE FISH.png",
  ];

  static final List<String> LivingGenerals = [
    "assets/img/living_generals/vonc clothes Fashion.png",
    "assets/img/living_generals/vonc_L-E_P.png",
    "assets/img/living_generals/vonc_l-e_s.png",
    "assets/img/living_generals/VONC_L-E.png",
  ];
  static final List<String> Cevices = [
    "assets/img/cevices/cervices ad-min.png",
    "assets/img/cevices/VONC D CERVICES-min.png",
    "assets/img/cevices/VONC MOTOR CERVICES-min.png",
    "assets/img/cevices/VONC CAR CERVICES-min.png",
    "assets/img/cevices/vonc plumbing bannerPost-min.png",
    "assets/img/cevices/Electronic Service  Banner app-min.png",
    "assets/img/cevices/White and Tosca Modern Gadget Repair Service Facebook Post.png",
  ];

  // living essentails

  static final List<String> LEBannerCategoriesStyleImages = [
    "assets/img/living_essentails/vonc_le_f_banner.png",
    "assets/img/living_essentails/vonc_le_ vegetables banners.png",
    "assets/img/living_essentails/vonc-ie_le_ Meat banner.png",
    "assets/img/living_essentails/Vonc_le_Grains_banner.png",
  ];
  static final List<String> LECategoriesStyleImages = [
    "assets/img/living_essentails/fruits_icon-removebg-preview.png",
    "assets/img/living_essentails/vegetables_icon-removebg-preview.png",
    "assets/img/living_essentails/meat_ivon-removebg-preview.png",
    "assets/img/living_essentails/grains_icon_img-removebg-preview.png",
  ];

  static final List<String> LECategoriesText = [
    "Fruits",
    "vegetables",
    "Meat",
    "Grains",
  ];
  static final List<Color> LEborderColors = [
    const Color(0xFF00bf63),
    const Color(0xFF00bf63),
    const Color(0xFF00bf63),
    const Color(0xFF00bf63),
  ];
  static final List<Fruit> fruits = [
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
}
