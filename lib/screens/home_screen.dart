import 'package:flutter/material.dart';
import 'package:training/data/data.dart';
import 'package:training/widgets/custom_card.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback changeThemeMode;

  const HomeScreen({Key? key, required this.changeThemeMode}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isLight = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Word"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _isLight = !_isLight;
              });
              widget.changeThemeMode();
            },
            icon: Icon(
              _isLight ? Icons.light_mode : Icons.dark_mode,
              // color: Theme.of(context).canvasColor,
            ),
          )
        ],
      ),
      body: Wrap(
        children: Data.cardData.map((item) => customCard(item, context)).toList(),
      ),
    );
  }
}
