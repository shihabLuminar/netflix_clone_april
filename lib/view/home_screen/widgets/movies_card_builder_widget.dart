import 'package:flutter/material.dart';
import 'package:netflix_clone_april/utils/constants/color_constants.dart';

class MoviesCardBuilderWidget extends StatelessWidget {
  const MoviesCardBuilderWidget({
    super.key,
    this.isCircle = false,
    this.customHeight = 161,
    this.customWidth = 103,
    required this.posterImages,
    this.haveInfoCard = false,
  });
  final bool isCircle; //  true for making items circular
  final double customHeight;
  final double customWidth;
  final List<String> posterImages;
  final bool haveInfoCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "Title",
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 22),
        SizedBox(
          height: isCircle ? customWidth : customHeight,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 12),
            itemCount: posterImages.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(posterImages[index])),
                  color: Colors.orange,
                  shape: isCircle ? BoxShape.circle : BoxShape.rectangle),
              height: customHeight,
              width: customWidth,
              child: Visibility(
                visible: haveInfoCard,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 3,
                      color: Colors.grey,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      color: ColorConstants.mainBlack,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            separatorBuilder: (context, index) => SizedBox(
              width: 7,
            ),
          ),
        ),
        SizedBox(height: 22),
      ],
    );
  }
}
