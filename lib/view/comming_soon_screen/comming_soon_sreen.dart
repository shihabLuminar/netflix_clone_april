import 'package:flutter/material.dart';
import 'package:netflix_clone_april/dummy_db.dart';
import 'package:netflix_clone_april/utils/constants/color_constants.dart';
import 'package:netflix_clone_april/view/comming_soon_screen/widgets/custom_video_card.dart';
import 'package:netflix_clone_april/view/comming_soon_screen/widgets/new_arrival_card.dart';

class CommingSoonSreen extends StatelessWidget {
  const CommingSoonSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
        leading: Center(
          child: CircleAvatar(
            backgroundColor: ColorConstants.primaryRed,
            radius: 15,
            child: Icon(
              Icons.notifications_sharp,
              color: ColorConstants.mainWhite,
              size: 20,
            ),
          ),
        ),
        title: Text(
          "Notification",
          style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: List.generate(
                DummyDb.newArrivals.length,
                (index) => NewArrivalCard(
                  imageUrl: DummyDb.newArrivals[index],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              children: List.generate(
                DummyDb.moviePostersListd1.length,
                (index) => CustomVideoCard(
                  imageUrl: DummyDb.moviePostersListd1[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
