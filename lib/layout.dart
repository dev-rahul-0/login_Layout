import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                child:   Image(
                  image: NetworkImage(
                      'https://www.rkinfotechindia.com/wp-content/uploads/2018/11/ui-ux-design-img.png'),),
                height: 400,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple,
                      offset: Offset(0.0, 8.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text("Username",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(
                height: 50,
                width: 380,
                child: TextField(
                  decoration: InputDecoration(hintText: 'Enter Username',
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),)
                  ),

                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
