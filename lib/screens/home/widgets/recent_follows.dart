import 'dart:math';

import 'package:artes_nft/constants/colors.dart';
import 'package:artes_nft/models/profile.dart';
import 'package:flutter/material.dart';

class RecentFollows extends StatelessWidget {
  final profilesList = [
    Profile.generateProfile(), Profile.generateProfile(),
    Profile.generateProfile(), Profile.generateProfile(),
    Profile.generateProfile(), Profile.generateProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      padding: EdgeInsets.only(left: 25),
      height: 50,
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3), shape: BoxShape.circle),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              )),
          Expanded(
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    Container(
                      padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: randomPinkList[random.nextInt(randomPinkList.length)],
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(profilesList[index].imgUrl!)),
                separatorBuilder: (_, index) => SizedBox(width: 15),
                itemCount: profilesList.length),
          )
        ],
      ),
    );
  }
}
