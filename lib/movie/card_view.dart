import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardMovie extends StatelessWidget {
  final String img;
  final String nama;
  final String category;

  const CardMovie({
    super.key,
    required this.img,
    required this.nama,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: const Color.fromARGB(191, 22, 21, 47).withOpacity(0.2),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.network(
                  img,
                  fit: BoxFit.cover,
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AspectRatio(
              aspectRatio: 5 / 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  color: Colors.black.withOpacity(0.4),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nama,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                        const Gap(5),
                        Text(
                          category,
                          style: const TextStyle(
                              fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
