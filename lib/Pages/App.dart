import 'package:ecommerce/Component/SectionList.dart';
import 'package:ecommerce/Utils/Icons.dart';
import 'package:ecommerce/Utils/Utils.dart';
import 'package:flutter/material.dart';

import '../Component/Footer.dart';

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
          title: const Text(
            "Task Shopping App",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
          elevation: 4,
          backgroundColor: Colors.orange,
          iconTheme: IconThemeData(color: Colors.white),
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
              child: const SectionList(),
            )
          ],
        ))),
        bottomNavigationBar: Footer());
  }
}
