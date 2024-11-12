import 'package:flutter/material.dart';
import 'package:food_order_app/controller/food_controller.dart';
import 'package:food_order_app/model/food_model.dart';
import 'package:food_order_app/view/widget/card_food.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final FoodController foodController = Get.put(FoodController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            const Text(
              'Hasil Pencarian',
              style: TextStyle(
                fontSize: 32, 
                fontWeight: FontWeight.bold, 
                color: Colors.black,
              ),
            ),
            const Gap(10),
            const Text(
              'Kategori',
              style: TextStyle(fontSize: 16),
            ),

            // Gridview
            const Gap(10),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
                itemCount: itemFood.length,
                itemBuilder: (context, index) {
                  return ZoomTapAnimation(
                    onTap: () {
                      foodController.openDetailsPage(itemFood[index]);
                    },
                    child: CardFood(
                      img: itemFood[index].img, 
                      nama: itemFood[index].nama, 
                      harga: itemFood[index].harga, 
                      rating: itemFood[index].rating,
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
