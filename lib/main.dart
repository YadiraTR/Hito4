
import 'package:flutter/material.dart';

// screens
import 'package:h4_exa/screens/biografia.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mi perfil',
        theme: ThemeData(fontFamily: 'OpenSans'),
        initialRoute: "/biografia",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{

          "/biografia": (BuildContext context) => new Biografia(),
        });
  }
}
