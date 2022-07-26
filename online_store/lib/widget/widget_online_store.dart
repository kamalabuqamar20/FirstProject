import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_store/models/product.dart';
import 'package:online_store/screen/description_online_store.dart';

class widgetOnlinedStore extends StatelessWidget {
 
  
  Product product;
  widgetOnlinedStore(this.product);

  @override
  Widget build(BuildContext context) {
    return Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: GestureDetector(
                  onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionOnlineStore(product.image,product.title,product.price,product.description)));
                      },
                   child: Stack(
                    alignment: Alignment.bottomCenter,
                 
                     children: [
                      Container(
                        width: double.infinity,
                        height: 190,                     
                      ),
///////////////////////////////////////////////////////////////////////////////////////////////////////////////





////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
                       Container(
                       height: 160,
                       width: double.infinity,
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 0,
                         blurRadius: 18,
                         offset:const Offset(0, 15), // changes position of shadow
                       ),
                     ], ),
                       
                       ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child:Image.asset(product.image??'',width: 140,height: 140,) ),
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
        ///
      
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                      Positioned(
                        left: 190,
                        top: 70,
                        child: Column(
                         /// crossAxisAlignment: CrossAxisAlignment.end,
                         // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          
///////////////////////////////////////////////////////////////////////
/*IconButton(
         onPressed: (){
           
         },
         icon:const ,,),*/
//////////////////////////////////////////////////////////////////////
            // GestureDetector(
            //    onTap: (){
            //     fun(product);
            //   //  fun1(product);
            //      },  
            //          child: Icon(Icons.favorite,color: product.isLike?Colors.red:Colors.grey)),
                    
                          Text(product.title??'',style:const TextStyle(fontWeight: FontWeight.bold),),
                          Text(product.subTitle??'',style:const TextStyle(color: Colors.grey),),
                       const SizedBox(height: 20,),
                          Container(
                            alignment: Alignment.center,
                            
                            width: 100,
                            height: 20,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellow[700],),
                            child: Text('${product.price??''}\$ :السعر',
                            style:const TextStyle(
                              fontWeight: FontWeight.bold),),
                          ),
       ///////////////////////////////////////////////////////////////////////////////////////////////////
       
       ///////////////////////////////////////////////////////////////////////////////////////////                   
                        ],
                      )),
   ///////////////////////////////////////////////////////////////////////////////////
   
        



   ///////////////////////////////////////////////////////////////////////////////                   
                     ],
                   ),
                 ),
               );
  }
}