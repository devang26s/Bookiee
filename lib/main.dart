// Author : Devang Soni
// Created on : 13/01/2020
// Functionality : This file contains the main function.
// Purpose : The main function is used to run the program.
// Version : 1.0
// Conatains splash screen and listing screen. Also listed stays.

import 'package:flutter/material.dart';
import 'dart:async';
import 'screens/DetailScreen.dart';

void main(){runApp(myApp());}

// ignore: camel_case_types
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySplash(),
      debugShowCheckedModeBanner: false
    );
  }
}

class MySplash extends StatefulWidget{
  @override
  _MySplash createState() => _MySplash();
}

class _MySplash extends State<MySplash>{
  @override 
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>   
                HomePage()
            )
        )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(children: [
          Image.asset('asset/hotel.jpg'),
          Text('3 Step BOOKIEE',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        ]),
      ),
    );
  }
}

class HomePage extends StatefulWidget{
  const HomePage({Key ?key}) : super (key: key);

  _Home createState() => _Home();
}

class _Home extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stay List', style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontFamily: 'play', fontSize: 27),), centerTitle: true, elevation: 10, backgroundColor: Colors.blueGrey, iconTheme: IconThemeData(color: Colors.cyan),),
      body:
     SafeArea(
       child: ListView.builder(itemCount: productsList.length,itemBuilder: (context,index)=>
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: GestureDetector(
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsScreen(description: productsList[index].description, image: productsList[index].image, name: productsList[index].name, price: productsList[index].price,longDescription: productsList[index].longDescription,ram: productsList[index].ram,processor: productsList[index].processor,)));
           },
           child: Container(
              color: Colors.blueGrey.shade50,
              height: 110,
              width: MediaQuery.of(context).size.width,
              child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.white,
                    child: Image.asset(productsList[index].image)
                  ),
                ),
                SizedBox(width: 50,),
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(productsList[index].name),
                     const SizedBox(height: 10,),
                    Text(productsList[index].description),
                     const SizedBox(height: 10,),
                    Text(productsList[index].price),
                  ],
                )
              ],),
            ),
         ),
       ),),
     ),
      
    );
  }
}




class SampleList{
  final String name;
 final String description;
  final String image;
  final String price;
  final String longDescription;
  final String processor;
  final String ram;


SampleList({required this.description,required this.image,required this.name,required this.price,required this.longDescription,required this.processor,required this.ram});

}

List<SampleList> productsList = [
  SampleList(description: 'King Feeling', image: 'asset/hotel.jpg', name: 'Prince Motel', price: '50,000/-',longDescription: 'This is Config PC 1 which\nis specially designed\nfor Programmers and\ncoders.',processor: 'Intel Core i5 9th Gen',ram: '16 GB'),
  SampleList(description: 'For Gaming', image: 'asset/hotel.jpg', name: 'Grand Mercury', price: '75,000/-',longDescription: 'This is Config PC 2 which\nis specially designed for\nGame lovers.',processor: 'Intel Core i7 9th Gen',ram: '32 GB'),
  SampleList(description: 'Family Trips', image: 'asset/hotel.jpg', name: 'Lemon Tree international', price: '45,500/-',longDescription: 'This is Config PC 3 which\nis specially designed for\nGraphics Designer',processor: 'Intel Core i5 9th Gen',ram: '32 GB'),
  SampleList(description: 'Royal Stay', image: 'asset/hotel.jpg', name: 'hayyat', price: '66,000/-',longDescription: 'This is Config PC 4 which\nis specially designed for\nAndroid Developer',processor: 'Intel Core i7 9th Gen',ram: '16 GB'),
  SampleList(description: 'General', image: 'asset/hotel.jpg', name: 'Casa Playaa', price: '50,500/-',longDescription: 'This is Config PC 5 which\nis specially designed\nfor General use.',processor: 'Intel Core i5 7th Gen',ram: '64 GB'),
  SampleList(description: 'Budget', image: 'asset/hotel.jpg', name: 'Red rooms', price: '49,000/-',longDescription: 'This is Config PC 6 which\nis specially designed\nfor College use',processor: 'Intel Core i7 9th Gen',ram: '32 GB'),
  SampleList(description: '7*', image: 'asset/hotel.jpg', name: 'Sea view Shine', price: '68,200/-',longDescription: 'This is Config PC 7 which\nis specially designed\nfor Professional use',processor: 'Intel Core i5 7th Gen',ram: '16 GB'),
  SampleList(description: '4*', image: 'asset/hotel.jpg', name: 'Queen Dens', price: '56,400/-',longDescription: 'This is Config PC 8 which\nis specially designed\nfor Administrative work',processor: 'Intel Core i5 7th Gen',ram: '32 GB'),
  SampleList(description: '5*', image: 'asset/hotel.jpg', name: 'Jungle national', price: '80,300/-',longDescription: 'This is Config PC 9 which\nis specially designed\nfor App developer',processor: 'Intel Core i5 8th Gen',ram: '32 GB'),
];