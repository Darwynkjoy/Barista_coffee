import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  const Homepage({super.key});
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
    {
      "image":"assets/images/coffee4.png.jpeg",
      "name":"Marshmello & Cocoa",
      "price":"rs:99"
    },
        {
      "image":"assets/images/coffee5.jpg",
      "name":"Drizzled with Caramel",
      "price":"rs:199"
    },
        {
      "image":"assets/images/coffee6.jpeg",
      "name":"Dalgona Whipped Macha",
      "price":"rs:299"
    },
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 35, 35),
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 35, 35, 35),
            height: 190,
            width: 500,
            child:
              Stack(
                children:[ 
                  Positioned(
                  top: 20,
                  left: 15,
                  child: Text("deja",style: TextStyle(fontSize: 45,color: Colors.grey),)),

                  Positioned(
                  top: 52,
                  left: 25,
                  child: Text("Brew",style: TextStyle(fontSize: 55,color: Colors.white),)),

                  Positioned(
                  top: 40,
                  right: 20,
                  child:Container(
                  height:60,
                  width:60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image:AssetImage("assets/images/Coffeeincup.jpg")),
                  color: const Color.fromARGB(255, 29, 39, 18),
                      ),
                    )),

                  Positioned(
                  top: 130,
                  left: 20,
                  child: SizedBox(
                    height: 40,
                    width: 370,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                      onPressed: (){}, child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.search,color: Colors.white,size: 35,)
                        ],
                      )),
                  ),),
                ]
              ),
          ),

          
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: GridView.builder(
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                ),
                itemBuilder: (context,index){
                  return Container(
                    height: 500,
                    width: 250,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color.fromARGB(255, 65, 65, 65)),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 170,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage(imageList[index]["image"]),
                            fit: BoxFit.fill
                            )),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(imageList[index]["name"],style: TextStyle(fontSize: 18,color: Colors.amber,fontWeight: FontWeight.bold),),

                              Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.amber),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 40,width: 40,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                      ),
                                      onPressed: (){},
                                      child:Center(child: Text("+",style: TextStyle(fontSize: 20,color: Colors.black),))),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }
                ),
            ),
          ),
        ]
          ),
    );
  }
}