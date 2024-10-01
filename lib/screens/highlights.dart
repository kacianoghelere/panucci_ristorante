import 'package:flutter/material.dart';
import 'package:panucci_ristorante/components/screen_title.dart';
import 'package:panucci_ristorante/constants.dart';
import 'package:panucci_ristorante/components/highlight_item.dart';

class Highlights extends StatelessWidget {
  const Highlights({super.key});

  @override
  Widget build(BuildContext context) {
    List items = highlights;

    bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: ScreenTitle(title: 'Destaques')
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return HighlightItem(
                  imageURI: items[index]['image'],
                  itemTitle: items[index]['name'],
                  itemPrice: items[index]['price'],
                  itemDescription: items[index]['description'],
                );
              },
              childCount: items.length
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isLandscape ? 2 : 1,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: isLandscape ? 1.1 : 1,
            ),
          )
        ],
      ),
    );
  }
}
