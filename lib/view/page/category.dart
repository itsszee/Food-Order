import 'package:flutter/material.dart';
import 'package:food_order_app/model/cat_model.dart';
import 'package:food_order_app/model/food_model.dart';
import 'package:food_order_app/view/widget/card_category.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CatPage extends StatelessWidget {
  const CatPage({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            const Text(
              'Category',
              style: TextStyle(
                fontSize: 32, 
                fontWeight: FontWeight.bold, 
                color: Colors.black),
            ),
            

            // Gridview
            const Gap(10),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
                itemCount: itemFood.length,
                itemBuilder: (context, index) {
                  return ZoomTapAnimation(
                    onTap: () {},
                    child: CardCategory(
                      img: itemCat[index].img, 
                      nama: itemCat[index].nama, category: '', 
                    )
                  );
                }
              ),
            )
          ],
          
        ),
      )
    );
  }
}