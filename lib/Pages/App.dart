import 'package:ecommerce/Utils/Icons.dart';
import 'package:ecommerce/Utils/Utils.dart';
import 'package:flutter/material.dart';

import '../Component/Footer.dart';
import '../Component/ProductView.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  AppState createState() => AppState();
}

@override
class AppState extends State<App> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: SingleChildScrollView(
            child: Container(
                child: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(app_background_image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Utils.sizeBoxHeight(20),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const ProductView(),
            )
          ],
        ))),
        bottomNavigationBar: Footer());
  }
}
