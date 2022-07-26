import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Person extends StatelessWidget {
  
  sendMessageByWhatsapp(String phone,String message){
String url = "whatsapp://send?phone=$phone&text=${Uri.encodeFull(message)}";
launchUrl(Uri.parse(url));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
     //   leading:const Icon(Icons.menu,color: Colors.black,),
         title:const Text('Kamal Abu Qamar',style: TextStyle(color: Colors.white),),
        actions: [
          const Center(child:   Text('رجوع',style: TextStyle(color: Colors.white),)),
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon:const Icon(Icons.arrow_back),color: Colors.white,),
        
        ],
      ),
      body: Container(
        width: double.infinity,
        child:const Image(image: AssetImage('assets/images/person.png'),fit: BoxFit.cover,)),
    );
  }
}