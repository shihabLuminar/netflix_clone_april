import 'package:flutter/material.dart';
import 'package:netflix_clone_april/utils/constants/color_constants.dart';
import 'package:netflix_clone_april/utils/constants/image_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Column(
        children: [
          _buildMoviePosterSection(),
          SizedBox(height: 11),
          _buildPlaySection(),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildPlaySection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(
              Icons.add,
              color: ColorConstants.mainWhite,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "My List",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 14,
              ),
            )
          ],
        ),
        SizedBox(
          width: 42,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(6)),
          child: Row(
            children: [
              Icon(
                Icons.play_arrow,
                size: 40,
                color: ColorConstants.mainBlack,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Play",
                style: TextStyle(
                  color: ColorConstants.mainBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 42,
        ),
        Column(
          children: [
            Icon(
              Icons.info_outline,
              color: ColorConstants.mainWhite,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Info",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 14,
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildMoviePosterSection() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(ImageConstants.POSTER1_JPG))),
          height: 415,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          height: 415,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [ColorConstants.mainBlack, Colors.transparent])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(ImageConstants.N_logo_png),
                    Text(
                      "TV shows",
                      style: TextStyle(
                          fontSize: 18, color: ColorConstants.mainWhite),
                    ),
                    Text(
                      "Movies",
                      style: TextStyle(
                          fontSize: 18, color: ColorConstants.mainWhite),
                    ),
                    Text(
                      "My List",
                      style: TextStyle(
                          fontSize: 18, color: ColorConstants.mainWhite),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImageConstants.TOP10_PNG),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "#2 in Nigeria Today",
                    style: TextStyle(
                        fontSize: 14,
                        color: ColorConstants.mainWhite,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
