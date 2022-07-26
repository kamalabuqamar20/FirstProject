//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_store/screen/person.dart';
//import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class DescriptionOnlineStore extends StatefulWidget {
int? id, price;

   String? title, subTitle, description, image;
   DescriptionOnlineStore(
    this.image,
    this.title,
    this.price,
    this.description,
    );

  @override
  State<DescriptionOnlineStore> createState() => _DescriptionOnlineStoreState();
}

class _DescriptionOnlineStoreState extends State<DescriptionOnlineStore> {
  

  bool isSellectedRed = false;

  bool isSellectedblue = false;

  bool isSellectedgrey = false;

   sendMessageByWhatsapp(String phone,String message){
String url = "whatsapp://send?phone=$phone&text=${Uri.encodeFull(message)}";
launchUrl(Uri.parse(url));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Container(
        width: 250,
        color: isSellectedRed?Colors.red:isSellectedblue?Colors.blue:isSellectedgrey?Colors.grey:Colors.grey,
        child: Column(
          children: [
         GestureDetector(
          onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>Person()));
          },
           child:  UserAccountsDrawerHeader(
            
              currentAccountPicture:const CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/person1.png', ),) ,
              accountName:const Text('Kamal Abu Qamar',style: TextStyle(fontWeight: FontWeight.bold),),
               accountEmail:const Text('kamalaboqamar@gmail.com',style: TextStyle(fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:isSellectedRed?const AssetImage('assets/images/red.png',):isSellectedblue?const AssetImage('assets/images/blue.png'):isSellectedgrey?const AssetImage('assets/images/grey.png'):const AssetImage('assets/images/grey.png'), fit: BoxFit.cover),
                  
                ),
               ),
         ),
                 
                
             ListTile(
                  leading: Image.asset('assets/images/watsapp.png'),
                  title:const Text('What\'s Up',style: TextStyle(fontSize: 20),),
                  onTap:(){
                    sendMessageByWhatsapp('+972597800976','hello kamal');
                    Navigator.of(context).pop(context);
                  } ,
                 ),
                const SizedBox(height: 15,),
                  ListTile(
                  leading: Image.asset('assets/images/call.png'),
                  title:const Text('Mobile number',style: TextStyle(fontSize: 20),),
                  onTap: (){
                    launchUrl(Uri.parse('tel:0597800976'));
                    Navigator.of(context).pop(context);
                  },
                 ),
                  const SizedBox(height: 15,),
                 ListTile(
                  leading: Image.asset('assets/images/sms.png'),
                  title:const Text('sms',style: TextStyle(fontSize: 20),),
                  onTap: (){
                    launchUrl(Uri.parse('sms:0597800976'));
                    Navigator.of(context).pop(context);
                  },
                 ),
                  const SizedBox(height: 15,),
                 ListTile(
                  leading: Image.asset('assets/images/gmail.png'),
                  title:const Text('Gmail',style: TextStyle(fontSize: 20),),
                  onTap: (){
                    
                    launchUrl(Uri.parse('mailto:kamalaboqamar@gmail.com'));
                    Navigator.of(context).pop(context);
                  },
                 ),
                  const SizedBox(height: 15,),
                  ],),
      ),
      appBar: AppBar(
        backgroundColor: isSellectedRed?Colors.red:isSellectedblue?Colors.blue:isSellectedgrey?Colors.grey:Colors.grey,
        elevation: 0,
       // leading:const Icon(Icons.menu,color: Colors.white,),
      /* title: IconButton(onPressed: (){
        String share = '${widget.title??''}\n${widget.subTitle??''}\n${widget.price??''}';
        Share.share(share);
       },icon:const Icon(Icons.share)),*/
        actions: [
          const Center(child:   Text('رجوع',style: TextStyle(color: Colors.white),)),
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon:const Icon(Icons.arrow_back),color: Colors.white,),
        
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
             // alignment: Alignment.bottomCenter,
              children: [
                Container(
                      color:Colors.blue[300], 
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 450,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius:const BorderRadiusDirectional.only(
                              bottomEnd: Radius.circular(40),
                              bottomStart: Radius.circular(40)),
                              color:isSellectedRed?Colors.red:isSellectedblue?Colors.blue:isSellectedgrey?Colors.grey:Colors.grey,
                              ),
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.only(top: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    
                                    Stack(
                                      children: [
                                        
                                        const CircleAvatar (
                                          radius: 120,
                                          backgroundColor: Colors.white,
                                        ),
                                        Positioned(
                                          top: 0,
                                          child:Image.asset(widget.image??'',width: 235,height: 235,) ),
                                      ],
                                    ),
                                  const  SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                           Container(
                          alignment: Alignment.center,
                            height: 24,
                          width: 24,
                            decoration: BoxDecoration(shape: BoxShape.circle,border:Border.all(color: isSellectedRed?Colors.red:Colors.grey.withOpacity(.0))),
                             child: IconButton(onPressed: (){
                              isSellectedRed = !isSellectedRed;
                              isSellectedgrey =false;
                              isSellectedblue=false;
                              setState(() {
                                
                              });
                             },
                             icon: Icon(Icons.circle,color: Colors.red[300],)),
                           ),
                            const  SizedBox(width: 15,),
                      ///////////////////////////////////////////////////////////////////////////////////   
                            Container(
                              alignment: Alignment.topCenter,
                            height: 24,
                          width: 24,
                            decoration: BoxDecoration(shape: BoxShape.circle,border:Border.all(color: isSellectedblue?Colors.blue:Colors.grey.withOpacity(.0))),
                              child: IconButton(onPressed: (){
                              isSellectedblue=!isSellectedblue;
                              isSellectedRed = false;
                              isSellectedgrey=false;
                              setState(() {
                                
                              });
                              },
                           icon: Icon(Icons.circle,color: Colors.blue[300],)),
                            ),
                          const  SizedBox(width: 15,),
                      ////////////////////////////////////////////////////////////////////////////////////     
                            Container(
                              alignment: Alignment.topCenter,
                            height: 24,
                          width: 24,
                            decoration: BoxDecoration(shape: BoxShape.circle,border:Border.all(color: isSellectedgrey?Colors.grey:Colors.grey.withOpacity(.0))),
                              child: IconButton(onPressed: (){
                                isSellectedgrey=!isSellectedgrey;
                                isSellectedRed=false;
                                isSellectedblue=false;
                                setState(() {
                                  
                                });
                              },
                           icon: Icon(Icons.circle,color: Colors.grey[300],)),
                            ),
                        
                        ],),
                   
                                  ],
                                ),
                              ),
                        ),
                       Positioned(
                        top: 380,
                        left: 190,
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                          
                          
                            Text(widget.title??'',style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                             Text('${widget.price}\$ :السعر',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.yellow[700]),),
                          ],),
                       ), 
                      ],
                    ),
                   
                Container(
                  alignment: Alignment.topRight,
                  width: double.infinity,
                  height: 150,
                  margin:const EdgeInsets.only(top: 470),
                  //color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(widget.description??'',style:const TextStyle(color: Colors.white,fontSize:20),),
                  ),
                ) ,

              ],
            ),    
             
          ),
          
        ],
      ),
      
    );
  }
}