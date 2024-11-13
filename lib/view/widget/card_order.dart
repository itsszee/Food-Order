import 'package:flutter/material.dart';

class CardOrder extends StatelessWidget {
  final String img;
  final String title;
  final String quantity;
  final int price;

  const CardOrder({
    super.key, 
    required this.img,
    required this.title,
    required this.quantity,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                img,
                width: 40, 
                height: 40, 
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600), 
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '$quantity x',
                    style: TextStyle(fontSize: 12, color: Colors.grey[700]), 
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Rp. ${price.toString()}',
                  style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600), 
                ),
              ],
            ),
          ],
        );
  }
}
