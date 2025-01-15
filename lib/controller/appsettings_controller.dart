import 'package:delivery_resturent/models/category_model.dart';
import 'package:delivery_resturent/models/order_model.dart';
import 'package:get/get.dart';

class AppSettingsController extends GetxController{
  List<CategoryModel> catlist=[
    CategoryModel(1, "Shawerma"),
    CategoryModel(2, "Burger"),
    CategoryModel(3, "Snacks"),
    CategoryModel(4, "appetizers"),
  ];
  List<OfferModel> offerlist=[
    OfferModel("https://images.pexels.com/photos/5926441/pexels-photo-5926441.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "50%", "buy one get one free")
,
    OfferModel("https://images.pexels.com/photos/5926441/pexels-photo-5926441.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "20%", "buy one get one free")
  ];
}