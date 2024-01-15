import 'package:ecommerce/Component/View.dart';
import 'package:ecommerce/Data/Product.dart';
import 'package:ecommerce/Utils/Utils.dart';
import 'package:flutter/material.dart';

class SectionList extends StatefulWidget {
  const SectionList({Key? key}) : super(key: key);

  @override
  _SectionListState createState() => _SectionListState();
}

class _SectionListState extends State<SectionList> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  String selectedFilter = 'All';
  bool isAscending = true;

  List<Product> getFilteredAndSortedProducts() {
    List<Product> filteredProducts = GetProduct.products;

    if (selectedFilter != 'All') {
      filteredProducts = GetProduct.products
          .where((product) => product.category == selectedFilter)
          .toList();
    }

    filteredProducts.sort((a, b) {
      return isAscending
          ? a.price.compareTo(b.price)
          : b.price.compareTo(a.price);
    });

    return filteredProducts;
  }

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
            buildFilterDropdown(),
            buildSortButton(),
            if (GetProduct.products.isNotEmpty)
              Container(
                height: 400,
                child: HomeFirst(product: getFilteredAndSortedProducts()),
              ),
          ],
        ),
      ),
    );
  }

  Widget buildFilterDropdown() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text('Filter: '),
        DropdownButton<String>(
          value: selectedFilter,
          onChanged: (String? newValue) {
            setState(() {
              selectedFilter = newValue!;
            });
          },
          items: <String>['All', 'Electronics', 'Furniture']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget buildSortButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text('Sort: '),
        IconButton(
          icon: Icon(
            isAscending ? Icons.arrow_upward : Icons.arrow_downward,
          ),
          onPressed: () {
            setState(() {
              isAscending = !isAscending;
            });
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
