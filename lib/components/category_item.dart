import 'package:flutter/material.dart';
import 'package:mytodo/models/category.dart';
import '../screens/categories_tasks_screen.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem(this.category);

  //pega a categoria de acordo com a qual eu clico
  void _selectCatagory(BuildContext context) {
    //rota nomeada
    Navigator.of(context).pushNamed(
      '/categories-tasks',
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCatagory(context),
      //borda do inkwell
      borderRadius: BorderRadius.circular(8),

      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(category.title),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: [category.color.withOpacity(0.5), category.color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
