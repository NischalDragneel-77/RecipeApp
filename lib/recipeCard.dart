import 'package:flutter/Material.dart';
import 'package:flutter/services.dart';

import 'package:recipe_app/details.dart';

class RecipeCard extends StatelessWidget {
  final String foodName;
  final String image;
  final List<Map<String, String>> ingredients;

  RecipeCard(
      {required this.foodName, required this.image, required this.ingredients});

  @override
  Widget build(BuildContext context) {
    var ingredientsName;
    ingredientsName = ingredients.map((ingredient) {
      return "${ingredient['name']}";
    }).toList();

    print(ingredientsName.runtimeType);
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => {print("Pressed $foodName")},
        child: Card(
          color: const Color.fromARGB(255, 113, 224, 122),
          shadowColor: Color.fromARGB(255, 8, 8, 8),
          elevation: 20,
          child: SizedBox(
            height: size.height / 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    image,
                    width: size.width / 2,
                  ),
                ),
                SizedBox(
                  width: size.width / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        foodName.toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                        ),
                      ),

                      Text(
                        ingredientsName.join(',').trim(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                      // ...(ingredients.map(
                      //   (ingredient) {
                      //     return Ingredients(IngredientName: ingredientsName[0]);
                      //   },
                      // )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
