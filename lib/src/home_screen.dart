import 'dart:math';
import 'package:flutter/material.dart';

//TODO: 01 We begin with a CustomScrollView, randomColor, and coloredCard
class HomeScreen extends StatelessWidget {
  final Random _random = Random(56);
  Color get randomColor => Color(0xFF000000 + _random.nextInt(0x00FFFFFF));

  Widget coloredCard(Color color) => Container(
        color: color,
      );

  @override
  Widget build(BuildContext context) {
    List<Widget> scrollItems =
        List.generate(52, (int index) => coloredCard(randomColor));

    return Scaffold(
      body: CustomScrollView(
        //This is how you specify the scroll direction, this is a part of the
        // ScrollView, and not its children, and we can always nest :-p
        scrollDirection: Axis.horizontal,
        slivers: <Widget>[
          //TODO: 02 Add a SliverGrid. Three Constructors available :-p
          //Count Constructor to specify the count of items in the cross axis
          SliverGrid.count(
            crossAxisCount: 4,
            children: scrollItems,
            crossAxisSpacing: 10,
            mainAxisSpacing: 5,
            childAspectRatio: 1,
          ),
          //Extent Constructor to specify
//        SliverGrid.extent(maxCrossAxisExtent: null),
          //Default Constructor
//        SliverGrid(delegate: null, gridDelegate: null),
        ],
      ),
    );
  }
}
