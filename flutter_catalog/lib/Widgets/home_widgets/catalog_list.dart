// CatalogList //
import 'package:flutter/material.dart';
import 'package:flutter_catalog/Widgets/home_widgets/catalog_image.dart';
import 'package:flutter_catalog/pages/home_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../Widgets/themes.dart';
import '../../models/catalog.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items!.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items![index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailpage(catalog: catalog),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}
// CatalogItem //

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image,
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(MyTheme.darkBulishColor).bold.make(),
              catalog.desc.text.textStyle(context.captionStyle!).make(),
              ButtonBar(
                alignment: MainAxisAlignment.spaceAround,
                buttonPadding: EdgeInsets.zero,
                children: [
                  '\$${catalog.price}'.text.bold.lg.make(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.darkBulishColor),
                        shape: MaterialStateProperty.all(
                          const StadiumBorder(),
                        )),
                    child: "Add to cart".text.make(),
                  ),
                ],
              ).pOnly(left: 16.0),
            ],
          ))
        ],
      ),
    ).color(context.cardColor).rounded.square(100).make().py16();
  }
}
