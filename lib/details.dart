import 'package:flutter/Material.dart';

class Details extends StatelessWidget {
  final String IngredientName;
  Details({required this.IngredientName});
  @override
  Widget build(BuildContext context) {
    return Text(
      IngredientName,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 10.0,
        overflow: TextOverflow.fade,
      ),
    );
  }
}
