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
                child: const Image(
                  image: NetworkImage(
                      'https://www.rkinfotechindia.com/wp-content/uploads/2018/11/ui-ux-design-img.png'),
                ),
                height: 400,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.purple,
                      offset: Offset(0.0, 8.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25, right: 200),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.purple),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 50,
                  width: 320,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Username',
                        contentPadding: const EdgeInsets.only(left: 25),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30))),
                  )),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                  height: 50,
                  width: 320,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        contentPadding: const EdgeInsets.only(left: 25),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30))),
                  )),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  height: 50,
                  width: 320,
                  child: TextField(
                    decoration: InputDecoration(fillColor: Colors.purple,
                        filled: true,
                        hintText: 'Sign in',
                        contentPadding: const EdgeInsets.only(left: 140),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30))),
                  )),
              const SizedBox(height: 10,)
            ],
          )
        ],
      ),
    );
  }
}
