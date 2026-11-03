import 'package:flutter/material.dart';



class CustoumBookitem extends StatelessWidget {
  const CustoumBookitem({super.key , required this.imageurl});
   
   final String imageurl ;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2/3, // Adjust the aspect ratio as needed
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageurl),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withOpacity(0.05),
        ),
      ),
    );
  }
}
