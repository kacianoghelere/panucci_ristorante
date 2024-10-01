import 'package:flutter/material.dart';
import 'package:panucci_ristorante/components/food_item.dart';
import 'package:panucci_ristorante/components/screen_title.dart';
import 'package:panucci_ristorante/constants.dart';
import 'package:panucci_ristorante/components/highlight_item.dart';
import 'package:panucci_ristorante/themes/app_colors.dart';

class FoodMenu extends StatelessWidget {
  const FoodMenu({super.key});

  @override
  Widget build(BuildContext context) {
    List items = foods;

    bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: ScreenTitle(title: 'Menu')
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return FoodItem(
                  itemTitle: items[index]['name'],
                  itemPrice: items[index]['price'],
                  imageURI: items[index]['image']
                );
              },
              childCount: items.length
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isLandscape ? 2 : 1,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: isLandscape ? 5 : 1,
            ),
          )
        ],
      ),
    );
  }
}
