import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screen/page/add_page.dart';
import 'package:instagram/screen/page/favorite_page.dart';
import 'package:instagram/screen/page/home_page.dart';
import 'package:instagram/screen/page/profile_page.dart';
import 'package:instagram/screen/page/search_page.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
    TabNavigationItem(
      page: HomePage(),
      icon: Icon(Icons.home,color: Colors.black,),
      title: Text("Home"),
    ),
    TabNavigationItem(
      page: SearchPage(),
      icon: Icon(Icons.search,color: Colors.black,),
      title: Text('Search'),
    ),
    TabNavigationItem(
      page: AddPage(),
      icon: Icon(Icons.add_box,color: Colors.black,),
      title: Text('Add'),
    ),
    TabNavigationItem(
      page: FavoritePage(),
      icon: Icon(Icons.favorite_border,color: Colors.black,),
      title: Text('favorite'),
    ),
    TabNavigationItem(
      page: ProfilePage(),
      icon: Icon(Icons.account_circle,color: Colors.black,),
      title: Text('Compte'),
    ),
  ];
}
