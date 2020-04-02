import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharemycartmobile/views/auth_page.dart';
import 'package:sharemycartmobile/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<FirebaseUser>.value(
          value: FirebaseAuth.instance.onAuthStateChanged
        ),
      ],
      child: MaterialApp(
        title: 'Share My Cart',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: new Auth(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
