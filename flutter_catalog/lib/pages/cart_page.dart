import 'package:flutter/material.dart';
import 'package:flutter_catalog/Widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:flutter_catalog/main.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.creamColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const Text('Cart'),
        ),
        body: Column(
          children: [
            const _CartList().p32().expand(),
            const Divider(),
            const _CartTotal(),
          ],
        ));
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999".text.xl4.color(context.theme.shadowColor).make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  elevation: 2.5,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12))),
                  backgroundColor: Colors.grey[800],
                  padding: const EdgeInsets.all(15),
                  content: "Buying not  supported yet ".richText.make()));
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(MyTheme.darkBulishColor)),
            child: "Buy".text.white.make(),
          ).w32(context),
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({Key? key}) : super(key: key);

  @override
  State<_CartList> createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
              title: "Item 1".text.make(),
              leading: const Icon(Icons.done),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_circle_outline)),
            ));
  }
}
