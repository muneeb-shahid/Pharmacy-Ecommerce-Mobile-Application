import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  get formKey => _formKey;


  TextEditingController _searchEditingController = TextEditingController();
  get SearchEditingController => _searchEditingController;
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();


// String? validateSearch(String? input) {
//     if (input == null || input.isEmpty) {
//       return 'Enter Something';
//     }

//     else{
//       return 'Enter minimum 3 words to search';
//     }

//     return null;
//   }


  @override
  void dispose() {
    focusNode1.dispose();
    focusNode2.dispose();

    _searchEditingController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
