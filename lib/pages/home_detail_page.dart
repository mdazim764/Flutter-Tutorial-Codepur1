
import 'package:flutter/material.dart';
import 'package:untitled2/widgets/MyThemes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import '../models/catalog.dart';
class HomeDetailPage extends StatelessWidget {
  final Items catalog;
  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar:  Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton.icon(onPressed: (){},
              icon: const Icon(Icons.shopping_cart, color: Colors.white),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Theme.of(context).colorScheme.primary),
                foregroundColor: WidgetStateProperty.all(Colors.white),
              ),
              label: "Add".text.xl.bold.make(),

            ).wh(150, 50)
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
                    color: context.cardColor,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl4.color(Theme.of(context).colorScheme.primary).bold.make(),
                        catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                        10.heightBox,
                        lorem(paragraphs: 1, words: 40).text.textStyle(context.captionStyle).make().p16().expand()
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
