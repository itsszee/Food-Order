
import 'package:food_order_app/config/app_asset.dart';

class OrderModel {
  final String img;
  final String title;
  final String quantity;
  final int price;

  OrderModel({required this.img, required this.title, required this.quantity, required this.price});

}

final List<OrderModel> itemOrder = [
  OrderModel(
    img: AppAsset.food1, 
    title: 'Makanan 1', 
    quantity: '2', 
    price: 10000
  ),
  OrderModel(
    img: AppAsset.food2, 
    title: 'Makanan 2', 
    quantity: '1', 
    price: 14000
  ),
];