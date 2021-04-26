import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// void main() {
//   runApp(MyHomePage());
// }
void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(title: Text("menu")),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // user input

                  Container(
                    width: double.infinity,
                    child: Card(
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Enter your username'),
                      ),
                    ),
                  ),
                  //  password input
                  Container(
                    width: double.infinity,
                    child: Card(
                      // color: Colors.blueGrey,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'password'),
                      ),
                    ),
                  ),
                  // login btn

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Login'),
                    ),
                  )
                ])));
  }
}
