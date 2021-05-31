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
        // to make app direction change
        builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child,
          );
        },
        // to make app direction change
        theme: new ThemeData(
          // defualt color
          primaryColor: Colors.purple,
          // defualt font
          fontFamily: 'almarai',
          // defualt button style
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.purple,
              onPrimary: Colors.white,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("تسجيل الدخول"),
            ),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // user input

                  Container(
                    alignment: Alignment.center,
                    width: 300,
                    child: Card(
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'ادخل البريد الإلكتروني'),
                      ),
                    ),
                  ),
                  //  password input
                  Container(
                    width: 300,
                    child: Card(
                      // color: Colors.,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'كلمة المرور'),
                      ),
                    ),
                  ),
                  // login btn

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('تسجيل الدخول'),
                    ),
                  )
                ])));
  }
}
