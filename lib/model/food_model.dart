import 'package:food_order_app/config/app_asset.dart';

class FoodModel {
  final String img;
  final String nama;
  final String harga;
  final String rating;
  final String deskripsi;

  FoodModel({required this.img, required this.nama, required this.harga, required this.rating, required this.deskripsi});
  

}

final List<FoodModel> itemFood = [
  FoodModel(
    img: AppAsset.food1, 
    nama: 'Makanan 1', 
    harga: 'Rp. 10000', 
    rating: '4.5', 
    deskripsi: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ducimus veritatis distinctio, voluptas dolor inventore odio eum, at earum quo id ullam rerum ex aperiam culpa quam aspernatur. Suscipit, aliquam sequi!'
  ),
  FoodModel(
    img: AppAsset.food2, 
    nama: 'Makanan 2', 
    harga: 'Rp. 14000', 
    rating: '4.6', 
    deskripsi: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ducimus veritatis distinctio, voluptas dolor inventore odio eum, at earum quo id ullam rerum ex aperiam culpa quam aspernatur. Suscipit, aliquam sequi!'
  ),
  FoodModel(
    img: AppAsset.food3, 
    nama: 'Makanan 3', 
    harga: 'Rp. 20000', 
    rating: '4.5', 
    deskripsi: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ducimus veritatis distinctio, voluptas dolor inventore odio eum, at earum quo id ullam rerum ex aperiam culpa quam aspernatur. Suscipit, aliquam sequi!'
  ),
  FoodModel(
    img: AppAsset.food4, 
    nama: 'Makanan 4', 
    harga: 'Rp. 30000', 
    rating: '4.6', 
    deskripsi: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ducimus veritatis distinctio, voluptas dolor inventore odio eum, at earum quo id ullam rerum ex aperiam culpa quam aspernatur. Suscipit, aliquam sequi!'
  ),
  FoodModel(
    img: AppAsset.food5, 
    nama: 'Makanan 5', 
    harga: 'Rp. 30000', 
    rating: '4.5', 
    deskripsi: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ducimus veritatis distinctio, voluptas dolor inventore odio eum, at earum quo id ullam rerum ex aperiam culpa quam aspernatur. Suscipit, aliquam sequi!'
  ),
  FoodModel(
    img: AppAsset.food6, 
    nama: 'Makanan 6', 
    harga: 'Rp. 25000', 
    rating: '4.5', 
    deskripsi: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ducimus veritatis distinctio, voluptas dolor inventore odio eum, at earum quo id ullam rerum ex aperiam culpa quam aspernatur. Suscipit, aliquam sequi!'
  ),
  FoodModel(
    img: AppAsset.food7, 
    nama: 'Makanan 7', 
    harga: 'Rp. 30000', 
    rating: '4.5', 
    deskripsi: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ducimus veritatis distinctio, voluptas dolor inventore odio eum, at earum quo id ullam rerum ex aperiam culpa quam aspernatur. Suscipit, aliquam sequi!'
  ),
  FoodModel(
    img: AppAsset.food8, 
    nama: 'Makanan 8', 
    harga: 'Rp. 15000', 
    rating: '4.5', 
    deskripsi: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ducimus veritatis distinctio, voluptas dolor inventore odio eum, at earum quo id ullam rerum ex aperiam culpa quam aspernatur. Suscipit, aliquam sequi!'
  ),
  FoodModel(
    img: AppAsset.food9, 
    nama: 'Makanan 9', 
    harga: 'Rp. 20000', 
    rating: '4.6', 
    deskripsi: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ducimus veritatis distinctio, voluptas dolor inventore odio eum, at earum quo id ullam rerum ex aperiam culpa quam aspernatur. Suscipit, aliquam sequi!'
  ),
  FoodModel(
    img: AppAsset.food10, 
    nama: 'Makanan 10', 
    harga: 'Rp. 15000', 
    rating: '4.5', 
    deskripsi: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ducimus veritatis distinctio, voluptas dolor inventore odio eum, at earum quo id ullam rerum ex aperiam culpa quam aspernatur. Suscipit, aliquam sequi!'
  ),
];