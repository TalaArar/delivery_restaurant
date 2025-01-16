import 'package:delivery_resturent/models/category_model.dart';
import 'package:delivery_resturent/models/items_models.dart';
import 'package:delivery_resturent/models/order_model.dart';
import 'package:delivery_resturent/models/subcategory_model.dart';
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

 List<SubcategoryModel> subcat=[
   SubcategoryModel(1, "single chicken meal", 1),
   SubcategoryModel(2, "single meat meal", 1),
   SubcategoryModel(3, "single chicken sandwish", 1),
   SubcategoryModel(4, "single meat sandwish", 1),
   SubcategoryModel(5, "super meat meal", 1),
   SubcategoryModel(6, "double meat meal", 1),
   SubcategoryModel(7, "triple  meat meal", 1),
   SubcategoryModel(8, "super chicken meal", 1),
   SubcategoryModel(9, "double chicken meal", 1),
   SubcategoryModel(10, "triple  chicken meal", 1),
   SubcategoryModel(11, "cheese burger",2),
   SubcategoryModel(12, "triple cheese burger",2),
   SubcategoryModel(13, "double burger",2),
   SubcategoryModel(14, "buffalo burger",2),
   SubcategoryModel(15, "chicken burger",2),
   SubcategoryModel(16, "chicken double burger",2),
   SubcategoryModel(17, "potato with cheese",3),
   SubcategoryModel(18, "zinger sandwich",3),
   SubcategoryModel(18, "zinger sandwich",3),

 ];

 List<SubcategoryModel> finalsub=[];
  List<ItemsModel> finalitems=[];
 List<ItemsModel> itemList=[
   ItemsModel(1, "itemName", 1, "single chicken meal", "Garlic,potato,vegtables,cola", "2", "4.8", "2", 1,"https://images.pexels.com/photos/18177324/pexels-photo-18177324/free-photo-of-shawarma-with-sauces-and-fries.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
 ];
 getsub(categoryno){
   update();
   finalsub=subcat.where((element) =>element.categoryNo==categoryno).toList();
   update();
 }

 int currentindex=0;
 changeindex(index){
   update();
   currentindex=index;
   update();
 }

 getItems(subNo){
   update();
   finalitems=itemList.where((element) => element.subCategoryNo==subNo,).toList();
   update();
 }
}