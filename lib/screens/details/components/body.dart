import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_app/config.dart';
import 'package:green_app/screens/details/components/icon_and_image.dart';
import 'package:green_app/screens/details/components/icon_card.dart';
import 'package:green_app/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          const TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 400,
          ),
          SizedBox(height: kDefaultPadding / 2),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                  ),
                  onPressed: () {},
                  child: const Text("Buy Now"),
                ),
              ),
              Expanded(
                  child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(0),
                ),
                onPressed: () {},
                child: const Text(
                  "Description",
                  style: TextStyle(color: Colors.black),
                ),
              ))
            ],
          ),
          SizedBox(height: kDefaultPadding / 2),
        ],
      ),
    );
  }
}
