import 'package:flutter/material.dart';
import 'package:food_order_app/movie/Card_model.dart';
import 'package:food_order_app/movie/card_view.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 15, 24),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Find Ur Best\nMovie',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),

            const Gap(10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for movies...',
                hintStyle: const TextStyle(color: Colors.white),
                filled: true,
                fillColor:
                    const Color.fromARGB(191, 22, 21, 47).withOpacity(0.2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none, // Remove border line
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),

            const Gap(10),
            const Text(
              'Now Playing',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),

            const Gap(5),

            // Gridview
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: itemMovie.length,
                itemBuilder: (context, index) {
                  return ZoomTapAnimation(
                    onTap: () {},
                    child: CardMovie(
                      img: itemMovie[index].img,
                      nama: itemMovie[index].nama,
                      category: itemMovie[index].category,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
