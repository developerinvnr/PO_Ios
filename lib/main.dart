import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  static const List<String> _assetNames = <String>[
    'assets/images/undraw_Login_re_4vu2.svg',
  ];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('Hello World'),
                Container(
                  height: 250,
                  width: 390,
                  child: SvgPicture.asset("assets/images/undraw_Login_re_4vu2.svg",
                      semanticsLabel: 'Acme Logo'),
                )
              ],
            ),
            Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'LOGIN ID',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const TextField(
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      "PASSWORD",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const TextField(
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          fixedSize: const Size(300, 60),
                          primary: Colors.green,
                          shadowColor: Colors.black),
                      onPressed: () {},
                      child: const Text('LOGIN'),
                    ),
                  )
                ]),
          ),
          ],
        ),
      ),
      
       /* Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('SIGN IN TO CONTINUE'),
          Container(
            height: 250,
            width: 390,
            child: SvgPicture.asset("assets/images/undraw_Login_re_4vu2.svg",
                semanticsLabel: 'Acme Logo'),
          ),
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'LOGIN ID',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const TextField(
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      "PASSWORD",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const TextField(
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          fixedSize: const Size(300, 60),
                          primary: Colors.green,
                          shadowColor: Colors.black),
                      onPressed: () {},
                      child: const Text('LOGIN'),
                    ),
                  )
                ]),
          ),
        ],
      ), */
    );
  }
}
