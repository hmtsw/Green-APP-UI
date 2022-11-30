import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_app/config.dart';
import 'package:green_app/screens/home/components/body.dart';
import 'package:green_app/screens/home/components/my_bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // int _currentIndex = 0;
    // List<Widget> _pages = [
    //   HomeScreen(),
    //   Container(),
    //   Container(),
    // ];
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: MyBottomNavBar(),
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //       print(_currentIndex);
      //     });
      //   },
      //   currentIndex: _currentIndex,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset("assets/icons/flower.svg"),
      //       label: "首页",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
      //       label: "喜欢",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset("assets/icons/user-icon.svg"),
      //       label: "我的",
      //     ),
      //   ],
      // ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/menu.svg"),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.notifications),
        ),
      ],
    );
  }
}
