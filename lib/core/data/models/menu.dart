import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final List<SubMenuItem> items;
  final IconData icon;

  MenuItem(
      {required Key key, required this.title, required this.items, this.icon = Icons.label_important});
}

class SubMenuItem {
  final String title;
  final Widget page;
  final IconData icon;
  final String path;

  SubMenuItem(this.title, this.page, {this.icon = Icons.block, required  this.path});
}

enum OpenMode { CODE, PREVIEW }
