import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/wedgits/category_card.dart';

class CategorisListView extends StatelessWidget {
  const CategorisListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
      categoryName: 'Business',
      imagePath: 'assets/business.avif',
    ),
    CategoryModel(
      categoryName: 'Entertainment',
      imagePath: 'assets/entertaiment.avif',
    ),
    CategoryModel(
      categoryName: 'Health',
      imagePath: 'assets/health.avif',
    ),
    CategoryModel(
      categoryName: 'Science',
      imagePath: 'assets/science.avif',
    ),
    CategoryModel(
      categoryName: 'Sports',
      imagePath: 'assets/sports.avif',
    ),
    CategoryModel(
      categoryName: 'Technology',
      imagePath: 'assets/technology.jpeg',
    ),
    CategoryModel(
      categoryName: 'General',
      imagePath: 'assets/general.avif',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCards(
            category: categories[index],
          );
        },
      ),
    );
  }
}
