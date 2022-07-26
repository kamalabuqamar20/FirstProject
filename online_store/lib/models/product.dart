class Product {
   int? id, price;
   String? title, subTitle, description, image;
   bool isLike =false;

  Product.fromJson(Map<String,dynamic> data){
  id = data['id'];
   price=data['price'];
   title=data['title'];
   subTitle=data['subTitle'];
   description=data['description'];
   image=data['image'];


  }
      
}