import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  get formKey => _formKey;

  final TextEditingController _searchEditingController = TextEditingController();
  get searchEditingController => _searchEditingController;
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();

  @override
  void dispose() {
    focusNode1.dispose();
    focusNode2.dispose();

    _searchEditingController.dispose();
    super.dispose();
  }
}
