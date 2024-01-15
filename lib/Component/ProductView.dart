import 'package:ecommerce/Data/Product.dart';
import 'package:ecommerce/Utils/Icons.dart';
import 'package:ecommerce/Utils/Utils.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return buildMainUI(context);
  }

  Widget buildMainUI(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Utils.sizeBoxHeight(10),
            if (GetProduct.products.isNotEmpty)
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: GetProduct.products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.90,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final item = GetProduct.products[index];

                  return Card(
                    color: Colors.white,
                    elevation: 3,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(),
                          SizedBox(
                            height: 80,
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              item.image,
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              item.name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(width: 1.0),
                              ),
                            ),
                            child: const Text(
                              "Shop Now",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            if (GetProduct.products.isEmpty)
              Center(
                child: Column(children: [
                  Image.asset(
                    no_records,
                    width: 100,
                  ),
                  Utils.sizeBoxHeight(20),
                  const Text("No data available.")
                ]),
              ),
          ],
        ),
      ),
    );
  }
}
