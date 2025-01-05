
import 'package:flutter/material.dart';
import 'package:untitled2/widgets/MyThemes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';
class HomeDetailPage extends StatelessWidget {
  final Items catalog;
  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemes.creamColor,
      appBar: AppBar(),
      bottomNavigationBar:  Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(onPressed: (){},
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(MyThemes.darkBluishColor),
                  foregroundColor: WidgetStateProperty.all(Colors.white)
              ),
              child: "Buy".text.xl.bold.make(),
            ).wh(100, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image)).h32(context),
            Expanded(
                child: VxArc(
                  height: 40.0,
                  arcType: VxArcType.convey,
                  edge: VxEdge.top,
                  child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl4.color(MyThemes.darkBluishColor).bold.make(),
                        catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                      ],
                    ).py64(),
                              ),
                )
            )
          ],
        ),
      ),
    );
  }
}
