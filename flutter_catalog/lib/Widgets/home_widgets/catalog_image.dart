// CatalogImage //

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Widgets/themes.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(MyTheme.creamColor).make().p12().w24(context);
  }
}
