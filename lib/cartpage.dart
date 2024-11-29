import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget{
  const Cartpage({super.key});
  @override
  Widget build(BuildContext context){
    List <Map> imageList=[
    {
      "image":"assets/images/coffe1.jpg",
      "name":"Dalgona Macha",
      "price":"Rs:299",
      "quantity":"1",
    },
    {
      "image":"assets/images/coffee2.jpg",
      "name":"Bursting Blueberry",
      "price":"Rs:249",
      "quantity":"2",
      
    },
    {
      "image":"assets/images/coffee3.jpg",
      "name":"Cinnamon & Cocoa",
      "price":"Rs:99",
      "quantity":"1"
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
                        image: DecorationImage(image: AssetImage(imageList[index]["image"]),fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(width: 10,),
                  Container(
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
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 132, 132, 132)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          //height: 35,
                          //width: 35,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(35, 35),
                              maximumSize: Size(35, 35),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              backgroundColor: const Color.fromARGB(255, 255, 240, 194)
                            ),
                            onPressed: (){}, child: Text("+",style: TextStyle(fontSize: 25,color: Colors.black),)),
                        ),

                        Text(imageList[index]["quantity"],style: TextStyle(fontSize: 17,color: Colors.white),),

                        SizedBox(
                          //height: 35,
                          //width: 35,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(35, 35),
                              maximumSize: Size(35, 35),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              backgroundColor: const Color.fromARGB(255, 255, 240, 194)
                            ),
                            onPressed: (){}, child: Text("+",style: TextStyle(fontSize: 25,color: Colors.black),)),
                        ),
                      ],
                    ),
                  ),

                  ],
                ),
                height: 110,
                width: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color.fromARGB(255, 74, 74, 74)),
              );
            },
            separatorBuilder: (context,index){
              return Padding(padding: EdgeInsets.all(10));
            },
            itemCount: 3,
            ),
        ),
        Text("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ",style: TextStyle(fontSize: 17,color: Colors.grey),),
        SizedBox(height: 10,),
        Container(
          height: 50,
          width: 390,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: const Color.fromARGB(69, 253, 207, 69)),
          child: Row(
            children: [
              SizedBox(width: 25,),
              Container(
                child:  Text("Apply Coupon Code",style: TextStyle(fontSize: 20,color: Colors.white),)),
              SizedBox(width: 130,),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.white),),
              SizedBox(width: 10,),
            ]
          ),
        ),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.all(15),
          color: const Color.fromARGB(255, 0, 0, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery Charges",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 215, 215, 215)),),
                  Text("Rs:49",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 215, 215, 215)),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Taxes",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 215, 215, 215)),),
                  Text("Rs:64.87",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 215, 215, 215)),),
                ]
              ),

              Text("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ",style: TextStyle(fontSize: 17,color: Colors.grey),),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Grand Total",style: TextStyle(fontSize: 25,color: const Color.fromARGB(255, 215, 215, 215)),),
                  Text("Rs:1009.87",style: TextStyle(fontSize: 25,color: const Color.fromARGB(255, 215, 215, 215)),),
                ]
              ),

              SizedBox(height: 40,),

              SizedBox(
                height: 50,
                width: 390,
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                  backgroundColor: const Color.fromARGB(255, 255, 240, 194)
                ),
                onPressed: (){},
                child: Text("PAY NOW",style: TextStyle(fontSize: 25,color: const Color.fromARGB(255, 0, 0, 0)),)
                ),
              )
            ],
          ),
        ),
      ]
    ),
    );
  }
}