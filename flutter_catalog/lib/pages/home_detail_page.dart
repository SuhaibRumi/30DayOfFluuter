import 'package:flutter/material.dart';
import 'package:flutter_catalog/Widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailpage extends StatelessWidget {
  final Item catalog;

  const HomeDetailpage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceAround,
          buttonPadding: EdgeInsets.zero,
          children: [
            '\$${catalog.price}'.text.bold.xl3.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(MyTheme.darkBulishColor),
                shape: MaterialStateProperty.all(
                  const StadiumBorder(),
                ),
              ),
              child: "Buy".text.xl.make(),
            ).wh(100, 40),
          ],
        ).p24(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h24(context),
            Expanded(
              child: VxArc(
                height: 50.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl2
                            .color(MyTheme.darkBulishColor)
                            .bold
                            .make(),
                        catalog.desc.text.xl
                            .textStyle(context.captionStyle!)
                            .xl
                            .make(),
                        10.heightBox,
                        "Justo amet dolore sadipscing sit et sadipscing diam sit,at consetetur justo takimata eos justo est,ipsum voluptua dolores ameteos just,Justo amet dolore sadipscing sit et sadipscing diam sit"
                            .text
                            .xl
                            .textStyle(context.captionStyle!)
                            .make()
                      ],
                    ).p64()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
