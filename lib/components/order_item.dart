import 'package:flutter/material.dart';
import 'package:panucci_ristorante/components/counter_component.dart';

class OrderItem extends StatefulWidget {
  final String imageURI;
  final String itemTitle;
  final String itemPrice;

  const OrderItem({
    super.key,
    required this.imageURI,
    required this.itemTitle,
    required this.itemPrice
  });

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      elevation: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 80,
            child: Image(
              image: AssetImage(widget.imageURI),
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.itemTitle,
                    style: const TextStyle(fontWeight: FontWeight.bold)
                  ),
                  Text("R\$ ${widget.itemPrice}"),
                ],
              ),
            )
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: CounterComponent(),
          ),
        ],
      ),
    );
  }
}
