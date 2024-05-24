import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:flutter/widgets.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "my app",
    home: Homepage(),
  )
  );
}
class Homepage extends StatelessWidget{
  const Homepage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold (
      appBar: AppBar(
        toolbarHeight: 60.5,
        leading: const Icon(Icons.menu,color: Color.fromARGB(228, 255, 255, 255),),
        title: const Text("Profile",style: TextStyle(
        color:  Color.fromARGB(242, 255, 255, 255),
        fontWeight: FontWeight.w600,
        fontSize: 35.5,
      ),
      ),
      centerTitle: true,
      actions: const [
        Icon(Icons.info_outline_rounded,color: Color.fromARGB(237, 255, 255, 255),),
         Padding(padding: EdgeInsets.only(right: 15)),
        Icon(Icons.share,size: 20.0,color: Color.fromARGB(246, 255, 255, 255),),
        Padding(padding: EdgeInsets.only(right: 15))
      ],
      backgroundColor: const Color.fromARGB(255, 62, 189, 248),
      ),
      body:Container(
       child: Column(
        children: [
          Container(
           child: Image.asset('assets/images/pic3.webp',
           height: 280.0,width: 600,
           fit: BoxFit.fitWidth,
           ),
          ),
          Container(
           height: 150,
            color: Colors.white10,
           padding: const EdgeInsets.all(6),
           child: const CircleAvatar(
            backgroundColor:  Colors.black12,
            radius: 80.0,
            backgroundImage: AssetImage('assets/images/pic2.jpg'),
           ),
          ),
          Container(
            color: Colors.white24,
            child: const Row(
              children: [
                Icon(Icons.person),
                Padding(padding:EdgeInsets.only(right: 10)),
                Text("Mahade Hasan Apurbo "),             
                ],  
            ),
          ),
          Container(
            color: Colors.white24,
            child: const Row(
              children: [
                Icon(Icons.school_sharp),
                Padding(padding:EdgeInsets.only(right: 10)),
                Text("BAIUST"),             
                ],  
            ),
          ),
           Container(
                       color: Colors.white24,
            child: const Row(
              children: [
                Icon(Icons.location_on),
                Padding(padding:EdgeInsets.only(right: 10)),
                Text("Comilla,Bangladesh"),             
                ],  
            ),
          ),
          Container(height: 20,),
          Container(
            child: TextField(decoration: InputDecoration(
              prefixIcon: const Icon(Icons.chat),
              hintText: 'send message',
              focusedBorder: OutlineInputBorder(
                borderRadius:BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.blue,
                width: 2)
              ),
              enabledBorder: OutlineInputBorder(
                 borderRadius:BorderRadius.circular(15),
                borderSide: const BorderSide(color: Color.fromARGB(255, 0, 1, 2),
                width: 2), 
              ),
              ),
          ),),
        ],
      ),
      )
      //Image.asset('assets/images/pic2.jpg'),
    );
}
}