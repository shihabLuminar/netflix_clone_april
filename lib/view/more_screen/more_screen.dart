import 'package:flutter/material.dart';
import 'package:netflix_clone_april/dummy_db.dart';
import 'package:netflix_clone_april/utils/constants/color_constants.dart';
import 'package:netflix_clone_april/view/global_widgets/user_name_card.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserSelectionSection(),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.edit, color: ColorConstants.mainWhite),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Manage Profiles",
                  style: TextStyle(
                    color: ColorConstants.mainWhite,
                  ),
                )
              ],
            ),
            SizedBox(height: 5),
            _buildReferrelSection(),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.check,
                  color: ColorConstants.mainWhite,
                  size: 30,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "My List",
                  style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey.shade800,
            ),
            Text(
              "My List",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "My List",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "My List",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildReferrelSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      color: Colors.grey.shade900,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.sms, color: ColorConstants.mainWhite),
              SizedBox(
                width: 6,
              ),
              Text(
                "Tell friends about Netflix.",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 5),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 10,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 11),
          Text(
            "Terms & Conditions",
            textAlign: TextAlign.justify,
            style: TextStyle(
                decorationThickness: 2,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                color: ColorConstants.mainWhite,
                fontSize: 10,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 11),
          Row(
            children: [
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.black,
                    filled: true,
                    border: InputBorder.none),
              )),
              SizedBox(width: 7),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Colors.white,
                child: Text(
                  "Copy Link",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            height: 21,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                size: 35,
                Icons.facebook,
                color: Colors.blue,
              ),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: ColorConstants.mainWhite,
                ),
              ),
              Icon(
                size: 35,
                Icons.facebook,
                color: Colors.blue,
              ),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: ColorConstants.mainWhite,
                ),
              ),
              Icon(
                size: 35,
                Icons.facebook,
                color: Colors.blue,
              ),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: ColorConstants.mainWhite,
                ),
              ),
              Column(
                children: [
                  Icon(
                    size: 35,
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                  Text(
                    "More",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.mainWhite,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildUserSelectionSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
              children: List.generate(
            DummyDb.usersList.length,
            (index) => UserNameCard(
              onCardPressed: () {
                selectedIndex = index;
                setState(() {});
              },
              height: index == selectedIndex ? 70 : 60,
              width: index == selectedIndex ? 73 : 65,
              imagePath: DummyDb.usersList[index]["imagePath"].toString(),
              userName: DummyDb.usersList[index]["name"].toString(),
            ),
          )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            height: 60,
            width: 63,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: ColorConstants.mainWhite),
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
