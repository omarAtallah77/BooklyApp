import 'package:flutter/material.dart';

class CustomFailureWidget extends StatelessWidget {
  const CustomFailureWidget({super.key , required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return  Center(child: Text(errorMessage));
  }
}