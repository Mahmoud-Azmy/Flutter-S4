import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Products',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView.builder(
        itemCount: productsList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return GridViewItem(
            title: productsList[index].title,
            subTitle: 'subTitle',
            imageUrl: 'imageUrl',
          );
        },
      ),
    );
  }
}

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
  });
  final String title;
  final String subTitle;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(height: 100, width: 150, color: Colors.grey),
            Text(title),
            Text(subTitle),
          ],
        ),
      ),
    );
  }
}

class ProductModel {
  final String title;
  final String subTitle;
  final String imageUrl;

  ProductModel({
    required this.title,
    required this.subTitle,
    required this.imageUrl,
  });
}

List<ProductModel> productsList = [
  ProductModel(title: 'title 1', subTitle: 'subTitle 1', imageUrl: 'imageUrl'),
  ProductModel(title: 'title 2', subTitle: 'subTitle 2', imageUrl: 'imageUrl'),
  ProductModel(title: 'title 3', subTitle: 'subTitle 3', imageUrl: 'imageUrl'),
  ProductModel(title: 'title 4', subTitle: 'subTitle 4', imageUrl: 'imageUrl'),
  ProductModel(title: 'title 5', subTitle: 'subTitle 5', imageUrl: 'imageUrl'),
  ProductModel(title: 'title 6', subTitle: 'subTitle 6', imageUrl: 'imageUrl'),
  ProductModel(title: 'title 7', subTitle: 'subTitle 7', imageUrl: 'imageUrl'),
  ProductModel(title: 'title 8', subTitle: 'subTitle 8', imageUrl: 'imageUrl'),
  ProductModel(title: 'title 9', subTitle: 'subTitle 9', imageUrl: 'imageUrl'),
  ProductModel(title: 'title 10', subTitle: 'subTitle10', imageUrl: 'imageUrl'),
];
