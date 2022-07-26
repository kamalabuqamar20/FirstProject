
import 'package:flutter/material.dart';
import 'package:online_store/data/dummy_data.dart';
import 'package:online_store/models/product.dart';
import 'package:online_store/screen/person.dart';
import 'package:online_store/widget/widget_online_store.dart';
import 'package:url_launcher/url_launcher.dart';

//import 'favorite.dart';

class OnlineStore extends StatefulWidget {
 
  @override
  State<OnlineStore> createState() => _nameState();
}

class _nameState extends State<OnlineStore> {



  sendMessageByWhatsapp(String phone,String message){
String url = "whatsapp://send?phone=$phone&text=${Uri.encodeFull(message)}";
launchUrl(Uri.parse(url));

  }
 
 
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.blue[300],
      drawer: Container(
        width: 250,
        color: Colors.white,
        child: Column(
          children: [
         GestureDetector(
          onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>Person()));
          },
           child: const UserAccountsDrawerHeader(
              currentAccountPicture:CircleAvatar(radius: 40,backgroundImage: AssetImage('assets/images/person1.png', ),) ,
              accountName: Text('Kamal Abu Qamar'),
               accountEmail: Text('kamalaboqamar@gmail.com')),
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
        backgroundColor: Colors.blue[300],
        elevation: 0,
        actions:const [
          Center(child: Text('مرحبا بكم بمتجر الالكترونيات',style: TextStyle(fontSize: 20),))
        ],
      ),
      
      body: Column(
        children: [
      /////////////////////////////////////////////////////////////////////////////////////////////////////
         Expanded(
           child: Stack(
             children: <Widget>[
               Container(
                margin:const EdgeInsets.only(top: 70),
                  decoration:const BoxDecoration(
                    borderRadius:BorderRadiusDirectional.only(
                      topEnd:Radius.circular(45),
                      topStart: Radius.circular(45)),
                      color: Colors.white, ),
                  
               ),
       //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
       /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////              
            Container(
             // color: Colors.black38,
              child: SingleChildScrollView(
                child: Column( 
                  children:[ ListView.builder(
                    physics:const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount:list.length,
                    itemBuilder:(context,index)=>widgetOnlinedStore(list[index])),]
                   //[   
                
                    ///////////////////////////////////////////////
                           /*  Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Stack(
                    alignment: Alignment.bottomCenter,
                
                     children: [
                      Container(
                        width: double.infinity,
                        height: 190,                     
                      ),
                       Container(
                       height: 160,
                       width: double.infinity,
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 18,
                      offset:const Offset(0, 15), // changes position of shadow
                    ),
                  ], ),
                       
                       ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child:Image.asset('assets/images/airpod.png',width: 140,height: 140,) ),
                      Positioned(
                        left: 200,
                        top: 70,
                        child: Column(
                        children: [
                        const  Text('سماعات لا سلكية',style: TextStyle(fontWeight: FontWeight.bold),),
                        const  Text('جودة صوت عالية',style: TextStyle(color: Colors.grey),),
                       const SizedBox(height: 20,),
                          Container(
                            alignment: Alignment.center,
                            
                            width: 100,
                            height: 20,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellow[700],),
                            child:const Text('59\$:السعر',
                            style: TextStyle(
                              fontWeight: FontWeight.bold),),
                          ),
                        ],
                      )),
                     ],
                   ),
                 ),
                          /////////////////////////////////////////////////////////////
                        //  const SizedBox(height: 20,),
                          /* Container(
                           height: 200,
                           width: double.infinity,
                           color: Colors.blue,
                   ),
                          
                ],),
                          ),*/
                          Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Stack(
                    alignment: Alignment.bottomCenter,
                
                     children: [
                      Container(
                        width: double.infinity,
                        height: 190,                     
                      ),
                       Container(
                       height: 160,
                       width: double.infinity,
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                    boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 18,
                      offset:const Offset(0, 15), // changes position of shadow
                    ),
                  ],
                        ),
                       ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child:Image.asset('assets/images/camera.png',width: 140,height: 140,) ),
                      Positioned(
                        left: 200,
                        top: 70,
                        child: Column(
                        children: [
                        const  Text('سماعات لا سلكية',style: TextStyle(fontWeight: FontWeight.bold),),
                        const  Text('جودة صوت عالية',style: TextStyle(color: Colors.grey),),
                       const SizedBox(height: 20,),
                          Container(
                            alignment: Alignment.center,
                            
                            width: 100,
                            height: 20,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellow[700],),
                            child:const Text('59\$:السعر',
                            style: TextStyle(
                              fontWeight: FontWeight.bold),),
                          ),
                        ],
                      )),
                     ],
                   ),
                 ),*/
                //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////             
                           //],
                         ),
              ),
         ),
       ////////////////////////////////////////////////////////////////////////////////////////////////////////
         
        ],),
      )]),
                 );
  }
}