import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  final String img;
  final String nama;

  const CardCategory({super.key, required this.img, required this.nama, required String category});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.black.withOpacity(0.5),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AspectRatio(
              aspectRatio: 3/1,
              child: Container(
                color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    nama,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
