import 'package:flutter/material.dart';
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
            Text(
              "Top searched",
              style: TextStyle(color: ColorConstants.mainWhite),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) => ListTile(
                  leading: Container(
                    color: Colors.red,
                    width: 146,
                  ),
                  title: Text(
                    "title",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  ),
                  trailing: Icon(Icons.play_circle_outline_rounded),
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
