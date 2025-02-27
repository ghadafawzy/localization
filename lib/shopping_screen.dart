 import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ShoppingScreen extends StatefulWidget {
  ShoppingScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ShoppingScreen> {

  //list of images that used in the app
  List imageList = [
    "images/candel27.png",
    "images/candel28.png",
    "images/candel31.png",
    "images/candel photo.png",
    "images/candel25.png",
    "images/candel3.png",
    "images/candel10.png",
    "images/candel19.png",
    "images/candel16.png",
    "images/candel20.png",
    "images/candel21.png",
    "images/candel32.png",

  ];

//list of prices of products that used in the app
  List price =[
    "\$700",
    "\$200",
    "\$500",
    "\$600",
    "\$400",
    "\$450",
    "\$350",
    "\$550",
    "\$600",
    "\$650",
    "\$250",
    "\$300",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar to show shopping app
      appBar: AppBar(
        title: Text(tr('shopping_page')),
        backgroundColor: Colors.white,
        elevation: 2,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
               Align(
                alignment: Alignment.topLeft,
                child: Text(tr('our_products'),
                  style:const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                ),
              ),
              //list view to show our products
              const SizedBox(height: 30,),
              Container(
                height: 240,
                child: ListView.builder(
                    itemCount: imageList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return Container(
                        margin: EdgeInsets.only(right: 13),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              //this stack to put a love react on the product
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: (){},
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(imageList[index]),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    top: 10,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child:const Center(
                                        child: Icon(Icons.favorite,
                                          color: Color(0xFFE48A8A),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 10,),
                            InkWell(child:const Center(
                              child:  Icon(Icons.shopping_cart,
                                size: 25,color:Color(0xFFE48A8A),),
                            ),
                              onTap:() {
                                var snackBar=  SnackBar(
                                  content: Text(tr('add_to_cart')),
                                  duration: Duration(seconds: 5),);
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              },),

                          ],
                        ),
                      );
                    }
                ),
              ),
              //text hot offers
               Align(
                alignment: Alignment.topLeft,
                child: Text(tr('hot_offers'),
                  style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                ),
              ),
              //grid view to show hot offers
              const SizedBox(height: 25,),
              GridView.builder(
                  itemCount: price.length,
                  shrinkWrap: true,
                  physics:const NeverScrollableScrollPhysics(),
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.6,
                    crossAxisSpacing: 2,
                  ),
                  itemBuilder: (context,index){
                    return Container(
                      padding:const EdgeInsets.only(right: 18,left: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200,
                            child: Stack(
                              children: [
                                InkWell(
                                  onTap: (){},
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(imageList[index]),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 10,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child:const Center(
                                      child: Icon(Icons.favorite,
                                        color: Color(0xFFE48A8A),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Text(price[index],
                            style:const TextStyle(fontSize: 18,
                              fontWeight: FontWeight.bold,color: Color(0xFFE48A8A),),
                          ),
                        ],
                      ),
                    );
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
