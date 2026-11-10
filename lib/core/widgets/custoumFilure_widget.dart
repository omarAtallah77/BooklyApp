import 'package:flutter/material.dart';

class CustomFailureWidget extends StatelessWidget {
  const CustomFailureWidget( {super.key , required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return  Center(child: Text(message));
  }
}