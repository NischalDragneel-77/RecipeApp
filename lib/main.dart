import 'package:flutter/material.dart';

import './recipeCard.dart';

void main() => runApp(RecipeApp());

class RecipeApp extends StatefulWidget {
  @override
  State<RecipeApp> createState() => _RecipeAppState();
}

class _RecipeAppState extends State<RecipeApp> {
  final _recipes = [
    {
      "name": "Crock Pot Roast",
      "ingredients": [
        {"quantity": "1", "name": "beef roast", "type": "Meat"},
        {"quantity": "1 package", "name": "brown gravy mix", "type": "Baking"},
        {
          "quantity": "1 package",
          "name": "dried Italian salad dressing mix",
          "type": "Condiments"
        },
        {
          "quantity": "1 package",
          "name": "dry ranch dressing mix",
          "type": "Condiments"
        },
        {"quantity": "1/2 cup", "name": "water", "type": "Drinks"}
      ],
      "steps": [
        "Place beef roast in crock pot.",
        "Mix the dried mixes together in a bowl and sprinkle over the roast.",
        "Pour the water around the roast.",
        "Cook on low for 7-9 hours."
      ],
      "timers": [0, 0, 0, 420],
      "imageURL":
          "http://img.sndimg.com/food/image/upload/w_266/v1/img/recipes/27/20/8/picVfzLZo.jpg",
      "originalURL":
          "http://www.food.com/recipe/to-die-for-crock-pot-roast-27208"
    },
    {
      "name": "Roasted Asparagus",
      "ingredients": [
        {"quantity": "1 lb", "name": " asparagus", "type": "Produce"},
        {"quantity": "1 1/2 tbsp", "name": "olive oil", "type": "Condiments"},
        {"quantity": "1/2 tsp", "name": "kosher salt", "type": "Baking"}
      ],
      "steps": [
        "Preheat oven to 425°F.",
        "Cut off the woody bottom part of the asparagus spears and discard.",
        "With a vegetable peeler, peel off the skin on the bottom 2-3 inches of the spears (this keeps the asparagus from being all.\",string.\", and if you eat asparagus you know what I mean by that).",
        "Place asparagus on foil-lined baking sheet and drizzle with olive oil.",
        "Sprinkle with salt.",
        "With your hands, roll the asparagus around until they are evenly coated with oil and salt.",
        "Roast for 10-15 minutes, depending on the thickness of your stalks and how tender you like them.",
        "They should be tender when pierced with the tip of a knife.",
        "The tips of the spears will get very brown but watch them to prevent burning.",
        "They are great plain, but sometimes I serve them with a light vinaigrette if we need something acidic to balance out our meal."
      ],
      "timers": [0, 0, 0, 0, 0, 0, 10, 0, 0, 0],
      "imageURL":
          "http://img.sndimg.com/food/image/upload/w_266/v1/img/recipes/50/84/7/picMcSyVd.jpg",
      "originalURL": "http://www.food.com/recipe/roasted-asparagus-50847"
    },
    {
      "name": "Acorn Squash",
      "ingredients": [
        {"quantity": "2", "name": "acorn squash", "type": "Produce"},
        {"quantity": "1", "name": "boiling water", "type": "Drinks"},
        {
          "quantity": "2",
          "name": "apples chopped into 1.4 inch pieces",
          "type": "Produce"
        },
        {"quantity": "1/2 cup", "name": "dried cranberries", "type": "Produce"},
        {"quantity": "1 teaspoon", "name": "cinnamon", "type": "Baking"},
        {"quantity": "2 tablespoons", "name": "melted butter", "type": "Dairy"}
      ],
      "steps": [
        "Cut squash in half, remove seeds.",
        "Place squash in baking dish, cut-side down.",
        "Pour 1/4-inch water into dish.",
        "Bake for 30 minutes at 350 degrees F.",
        "In large bowl, combine remaining ingredients.",
        "Remove squash from oven, fill with mix.",
        "Bake for 30-40 more minutes, until squash tender.",
        "Enjoy!"
      ],
      "timers": [0, 0, 0, 30, 0, 0, 30, 0],
      "imageURL":
          "http://elanaspantry.com/wp-content/uploads/2008/10/acorn_squash_with_cranberry.jpg",
      "originalURL": ""
    },
    {
      "name": "Mic's Yorkshire Puds",
      "ingredients": [
        {"quantity": "200g", "name": "plain flour", "type": "Baking"},
        {"quantity": "3", "name": "eggs", "type": "Dairy"},
        {"quantity": "300ml", "name": "milk", "type": "Dairy"},
        {"quantity": "3 tbsp", "name": "vegetable oil", "type": "Condiments"}
      ],
      "steps": [
        "Put the flour and some seasoning into a large bowl.",
        "Stir in eggs, one at a time.",
        "Whisk in milk until you have a smooth batter.",
        "Chill in the fridge for at least 30 minutes.",
        "Heat oven to 220C/gas mark 7.",
        "Pour the oil into the holes of a 8-hole muffin tin.",
        "Heat tin in the oven for 5 minutes.",
        "Ladle the batter mix into the tin.",
        "Bake for 30 minutes until well browned and risen."
      ],
      "timers": [0, 0, 0, 30, 0, 0, 5, 0, 30],
      "imageURL":
          "http://upload.wikimedia.org/wikipedia/commons/f/f9/Yorkshire_Pudding.jpg",
      "originalURL":
          "http://upload.wikimedia.org/wikipedia/commons/f/f9/Yorkshire_Pudding.jpg"
    },
    {
      "name": "Oatmeal Cookies",
      "ingredients": [
        {"quantity": "1 cup", "name": "raisins", "type": "Produce"},
        {"quantity": "1", "name": "cup water", "type": "Drinks"},
        {"quantity": "3/4 cup", "name": "shortening", "type": "Baking"},
        {"quantity": "1 1/2 cups", "name": "sugar", "type": "Baking"},
        {"quantity": "2 1/2 cups", "name": "flour", "type": "Baking"},
        {"quantity": "1 tsp.", "name": "soda", "type": "Baking"},
        {"quantity": "1 tsp.", "name": "salt", "type": "Baking"},
        {"quantity": "1 tsp.", "name": "cinnamon", "type": "Baking"},
        {"quantity": "1/2 tsp.", "name": "baking powder", "type": "Baking"},
        {"quantity": "1/2 tsp.", "name": "cloves", "type": "Baking"},
        {"quantity": "2 cups", "name": "oats", "type": "Baking"},
        {"quantity": "1/2 cup", "name": "chopped nuts", "type": "Baking"}
      ],
      "steps": [
        "Simmer raisins and water over medium heat until raisins are plump, about 15 minutes.",
        "Drain raisins, reserving the liquid.",
        "Add enough water to reserved liquid to measure 1/2 cup.",
        "Heat oven to 400°.",
        "Mix thoroughly shortening, sugar, eggs and vanilla.",
        "Stir in reserved liquid.",
        "Blend in remaining ingredients.",
        "Drop dough by rounded teaspoonfuls about 2 inches apart onto ungreased baking sheet.",
        "Bake 8 to 10 minutes or until light brown.",
        "About 6 1/2 dozen cookies."
      ],
      "timers": [15, 0, 0, 0, 0, 0, 0, 0, 8, 0],
      "imageURL":
          "http://s3.amazonaws.com/gmi-digital-library/65caecf7-a8f7-4a09-8513-2659cf92871e.jpg",
      "originalURL": "#"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Recipe App"),
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...(_recipes.map(
                (recipe) {
                  // print(recipe['image'] as String);
                  return RecipeCard(
                      foodName: recipe["name"] as String,
                      image: recipe['imageURL'] as String,
                      ingredients:
                          recipe['ingredients'] as List<Map<String, String>>);
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
