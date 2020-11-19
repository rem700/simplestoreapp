import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simplestoreapp/constants.dart';
import 'package:simplestoreapp/models/product.dart';
import 'package:simplestoreapp/screens/components/categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                  childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(),),
          ),
        ),
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key, this.product, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.all(kDefaultPadding),
            // height: 180,
            width: 160,
            decoration: BoxDecoration(
              color: products[0].color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(products[0].image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/4),
          child: Text(products[0].title, style: TextStyle(color: kTextLightColor),),
        ),
        Text('\$254', style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),),
      ],
    );
  }
}



