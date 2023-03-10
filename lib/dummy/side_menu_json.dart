import 'package:flutter/material.dart';
import 'package:projectmobile/pages/home_page.dart';
import 'package:projectmobile/pages/shop_page.dart';
import 'package:projectmobile/pages/skill_page.dart';

List sideMenuItems = [
  {
    "label": "Home",
    "selected": true,
    "icon": Icons.home_filled,
    "page": MyHomePage()
  },
  {
    "label": "Skill",
    "selected": false,
    "icon": Icons.precision_manufacturing_sharp,
    "page": SkillPage()
  },
  {
    "label": "Shop",
    "selected": false,
    "icon": Icons.shop_2,
    "page": ShopPage(),
  },
];
