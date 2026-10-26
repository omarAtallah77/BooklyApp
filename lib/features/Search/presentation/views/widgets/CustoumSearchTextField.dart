import 'package:flutter/material.dart';

class CustoumSearchTextField extends StatelessWidget {
  const CustoumSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, top: 30.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for books',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Colors.grey),
          
          ),
          suffixIcon: Icon(Icons.search),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Colors.grey),)
        ),
      ));
  }
}