import 'package:flutter/material.dart';
import 'package:green_app/config.dart';
import 'package:green_app/screens/home/components/featured_plants.dart';
import 'package:green_app/screens/home/components/header_with_search.dart';
import 'package:green_app/screens/home/components/recomend_plants.dart';
import 'package:green_app/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            btnTitle: "More",
            press: () {},
          ),
          RecomendsPlants(),
          TitleWithMoreBtn(
            title: "Featured Plants",
            btnTitle: "More",
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}
