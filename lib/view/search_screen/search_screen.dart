import 'package:flutter/material.dart';
import 'package:netflix_clone_april/dummy_db.dart';
import 'package:netflix_clone_april/utils/constants/color_constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                suffixIcon: Icon(
                  Icons.mic,
                  color: Colors.grey,
                ),
                hintText: "Search for a show, movie, genre, e.t.c.",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.grey.shade800,
              ),
            ),
            SizedBox(
              height: 21,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Top Searches",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 21),
                itemCount: DummyDb.moviePostersListd1.length,
                itemBuilder: (context, index) => Container(
                    color: Colors.grey.shade800,
                    child: Row(
                      children: [
                        Container(
                          height: 76,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      DummyDb.moviePostersListd1[index]))),
                          width: 146,
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Citation",
                          style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontWeight: FontWeight.normal,
                              fontSize: 14),
                        ),
                        Spacer(),
                        Icon(
                          Icons.play_circle_outline_rounded,
                          color: ColorConstants.mainWhite,
                        ),
                        SizedBox(width: 5),
                      ],
                    )),
                separatorBuilder: (context, index) => SizedBox(
                  height: 3,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
