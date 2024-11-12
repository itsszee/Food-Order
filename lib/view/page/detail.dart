// import 'package:flutter/material.dart';
// import 'package:food_order_app/controller/food_controller.dart';
// import 'package:food_order_app/model/food_model.dart';
// import 'package:gap/gap.dart';
// import 'package:get/get.dart';

// class DetailPage  extends StatelessWidget {
  
//   final FoodModel item;

//   DetailPage({super.key, required this.item});

//   final FoodController foodController = Get.put(FoodController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
        
//         // Image
//         children: [
//           Expanded(
//             flex: 2,
//             child: Stack(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 5),
//                   child: SizedBox(
//                     width: double.infinity,
//                     child: Image.asset(item.img, fit: BoxFit.cover,)
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   child: SizedBox(
//                     width: double.infinity,
//                     height: 25,
//                     child: Container(
//                       decoration: const BoxDecoration(
//                         borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),

//           // Detail
//           Expanded(
//             flex: 3,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         item.nama,
//                         style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         item.harga,
//                         style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Gap(10),
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                   child: Row(
//                     children: [
//                       const Icon(Icons.star, size: 20, color: Colors.amber,),
//                       const Gap(2),
//                       Text(item.rating),
//                     ],
//                   ),
//                 ),
                
//                 const Gap(10),
//                 SizedBox(
//                   width: double.infinity, 
//                   height: 5,
//                   child: Container(color: Colors.grey.shade200,),
//                 ),
//                 const Gap(10),


//                 // Deskripsi
//                 const Padding(
//                   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
//                   child: Text('Details', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
//                 ),
//                 const Gap(10),
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                   child: Text(item.deskripsi),
//                 ),

//                 // Bottom Order
//                 Expanded(
//                   child: Align(
//                     alignment: Alignment.bottomCenter,
//                     child: Padding(
//                       padding: const EdgeInsets.all(20),
//                       child: SizedBox(
//                         width: double.infinity,
//                         height: 40,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             foodController.launchWhatsApp(item.nama);
//                           }, 
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.orange,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(25)
//                             )
//                           ),
//                           child: const Text('ORDER', style: TextStyle(color: Colors.white),)
//                         ),
//                       ),
//                     ),
//                   ),
//                 )



//               ],
//             )
//           )
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:food_order_app/controller/food_controller.dart';
import 'package:food_order_app/model/food_model.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  final FoodModel item;

  DetailPage({super.key, required this.item});

  final FoodController foodController = Get.put(FoodController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Image
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      item.img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 25,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Detail
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.nama,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        item.harga,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.amber,
                      ),
                      const Gap(2),
                      Text(item.rating),
                    ],
                  ),
                ),
                const Gap(10),
                SizedBox(
                  width: double.infinity,
                  height: 5,
                  child: Container(
                    color: Colors.grey.shade200,
                  ),
                ),
                const Gap(10),

                // Deskripsi
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(
                    'Details',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(item.deskripsi),
                ),

                // Bottom Order and Cart Buttons
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          // Order Button
                          Expanded(
                            flex: 5, // Memberikan lebih banyak ruang untuk tombol Order
                            child: ElevatedButton(
                              onPressed: () {
                                foodController.launchWhatsApp(item.nama);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: const Text(
                                'ORDER',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          // Cart Button
                          Expanded(
                            flex: 4, // Memberikan lebih sedikit ruang untuk tombol Cart
                            child: OutlinedButton(
                              onPressed: () {
                                // TODO: Tambahkan fungsi untuk cart
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: const Text(
                                'CART',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
