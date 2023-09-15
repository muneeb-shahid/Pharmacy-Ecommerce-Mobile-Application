import 'package:flutter/material.dart';
import 'package:servaid/constants/colors_constants/colors_constants.dart';

import '../../Reusable Components/BottomNavigation/BottomNavigation.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        centerTitle: true,
      ),
    );
  }
}
