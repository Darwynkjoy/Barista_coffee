import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget{
  const Cartpage({super.key});
  @override
  Widget build(BuildContext context){
    List <Map> imageList=[
    {
      "image":"assets/images/coffe1.jpg",
      "name":"Dalgona Macha",
      "price":"rs:299"
    },
    {
      "image":"assets/images/coffee2.jpg",
      "name":"Bursting Blueberry",
      "price":"rs:249"
    },
    {
      "image":"assets/images/coffee3.jpg",
      "name":"Cinnamon & Cocoa",
      "price":"rs:99"
    },
    
    ];
    return Scaffold(
      backgroundColor: Colors.black,
    
    body:
    Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 30)),
        Text("Cart",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
        Container(
          width: 410,height: 400,
          color: Colors.white,
          child: ListView.separated(
            padding: EdgeInsets.all(15),
            itemBuilder: (context,index){
              return Container(
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10.0)),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 255, 254, 254),
                        image: DecorationImage(image: AssetImage(imageList[index]["image"]),fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(width: 10,),
                  Container(
                    color: Colors.grey,
                    height: 100,
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Text("Cappuccino",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                        Text(imageList[index]["name"],style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                        SizedBox(height: 10,),
                        Text(imageList[index]["price"],style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 30,
                    width: 105,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 240, 0, 0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize:Size(30,30),
                            maximumSize: Size(30,30),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                          ),
                          onPressed: (){}, child: Center(child: Text("+",style: TextStyle(color: Colors.black,fontSize: 18),)),),
                        
                        Text("1",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                  
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize:Size(30,30),
                            maximumSize: Size(30,30),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                          ),
                          onPressed: (){}, child: Center(child: Text("-",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),)
                      ],
                    ),
                  ),
                  //SizedBox(width: 10,)
                  ],
                ),
                height: 110,
                width: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color.fromARGB(255, 82, 82, 82)),
              );
            },
            separatorBuilder: (context,index){
              return Padding(padding: EdgeInsets.all(10));
            },
            itemCount: 3,
            ),
        ),
        Text("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  - - ",style: TextStyle(fontSize: 17,color: Colors.white),),
        SizedBox(height: 10,),
        Container(
          height: 30,
          width: 390,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color:Colors.orange),
          child: Row(
            children: [
              SizedBox(width: 15,),
              Container(
                child:  Text("Apply Coupon Code",style: TextStyle(fontSize: 15,color: Colors.white),)),
              SizedBox(width: 190,),
              Container(
                height: 30,
                width: 30,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,color: const Color.fromARGB(255, 0, 0, 0),))
                ),
              SizedBox(width: 10,),
            ]
          ),
        ),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.all(10),
          color: Colors.grey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery Charges",style: TextStyle(fontSize: 15,color: Colors.white),),
                  Text("rs:49",style: TextStyle(fontSize: 15,color: Colors.white),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Taxes",style: TextStyle(fontSize: 15,color: Colors.white),),
                  Text("rs:64.87",style: TextStyle(fontSize: 15,color: Colors.white),),
                ]
              ),
            ],
          ),
        ),
      ]
    ),
    );
  }
}