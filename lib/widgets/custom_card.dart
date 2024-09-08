import 'package:flutter/material.dart';

Card customCard(item, context) {
  return Card(
    shadowColor: Theme.of(context).primaryColor,
    elevation: 5,
    child: Container(
      width: MediaQuery.of(context).size.width / 3.2,
      height: MediaQuery.of(context).size.height / 3.3,
      padding: const EdgeInsets.all(10),
      child: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(item['icon']),
          Text("Title: ${item['title']}"),
          Text("Des: ${item['des']}"),
        ],
      ),
    ),
  );
}
