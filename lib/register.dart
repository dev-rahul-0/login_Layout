import 'package:flutter/material.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
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
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.deepPurple,
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
                    "  Register",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.deepPurple),
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
                          hintText: 'E-mail',
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
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(320, 50),
                        backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary),
                    child: Text('Register ')),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 100),
                      child: Text("You have Account? ",
                          style: TextStyle(color: Colors.purple)),
                    ),
                    TextButton(onPressed: () {
                      Navigator.pushNamed(context, 'layout');
                    }, child: const Text("Log-in"))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
