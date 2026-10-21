import 'package:bookly_app/core/utils/Styles.dart';
import 'package:bookly_app/core/utils/assetsdata.dart';
import 'package:flutter/material.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2 / 3, // Adjust the aspect ratio as needed
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(assetsData.testBook),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.05),
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Harry potter and the Goblet of fire',
                    style: Styles.titleMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text('J.K.Rowling'),
                Expanded(
                  child: Row(
                    children: [
                      Text('19.99\$', style: Styles.titleMedium),
                      Spacer(),
                      Icon(Icons.star, color: Colors.yellow),
                      Text('4.8'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
