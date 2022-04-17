import 'package:flutter/material.dart';
import 'package:jsonse/modal/data.dart';

class IndexData extends StatelessWidget {
  const IndexData({
    required this.character,
    Key? key,
  }) : super(key: key);

  final Data character;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Text(character.id),
      ),
    );
  }
}