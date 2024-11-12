import 'package:food_order_app/config/app_asset.dart';

class CatModel {
  final String img;
  final String nama;

  CatModel({required this.img, required this.nama });
  

}

final List<CatModel> itemCat = [
  CatModel(
    img: AppAsset.food1, 
    nama: 'Appetizer', 
    
  ),
  CatModel(
    img: AppAsset.food2, 
    nama: 'Main Course', 
    
  ),
  CatModel(
    img: AppAsset.food3, 
    nama: 'Dessert', 
    
  ),
  CatModel(
    img: AppAsset.food4, 
    nama: 'Beverages', 
    
  ),
  CatModel(
    img: AppAsset.food5, 
    nama: 'Snacks', 
    
  ),
  CatModel(
    img: AppAsset.food6, 
    nama: 'Traditional Food', 
    
  ),
  CatModel(
    img: AppAsset.food7, 
    nama: 'Healty Food', 
    
  ),
  CatModel(
    img: AppAsset.food8, 
    nama: 'Fast Food', 
    
  ),
  CatModel(
    img: AppAsset.food9, 
    nama: 'Vegan', 
    
  ),
  CatModel(
    img: AppAsset.food10, 
    nama: 'International Food', 
    
  ),
];