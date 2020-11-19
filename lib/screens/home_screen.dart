import 'package:flutter/material.dart';
import 'package:simplestoreapp/constants.dart';
import 'package:simplestoreapp/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: kTextColor,),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search, color: kTextColor,),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPadding/2,),
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined, color: kTextColor,),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPadding/2,),
      ],
    );
  }
}
