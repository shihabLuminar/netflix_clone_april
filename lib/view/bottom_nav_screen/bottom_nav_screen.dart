import 'package:flutter/material.dart';
import 'package:netflix_clone_april/utils/constants/color_constants.dart';
import 'package:netflix_clone_april/view/comming_soon_screen/comming_soon_sreen.dart';
import 'package:netflix_clone_april/view/home_screen/home_screen.dart';
import 'package:netflix_clone_april/view/more_screen/more_screen.dart';
import 'package:netflix_clone_april/view/search_screen/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;
  List<Widget> myScreens = [
    HomeScreen(),
    SearchScreen(),
    CommingSoonSreen(),
    Container(color: Colors.blue),
    MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens[selectedIndex],
      backgroundColor: ColorConstants.mainBlack,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: ColorConstants.mainBlack,
        selectedItemColor: ColorConstants.mainWhite,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        items: [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined),
              label: "Comming soon"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.download_done),
              icon: Icon(Icons.file_download_sharp),
              label: "Downloads"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
        ],
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
