import 'dart:math';

import 'package:artes_nft/constants/colors.dart';
import 'package:artes_nft/models/Activity.dart';
import 'package:artes_nft/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';

class ActivitiesList extends StatelessWidget {
  final activitiesList = Activity.generateActivities();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: _buildActivities(),
    ));
  }

  Widget _buildActivities() {
    return ListView.separated(
        itemBuilder: (context, index) =>
            _buildActivity(context, activitiesList[index]),
        separatorBuilder: (_, index) => SizedBox(height: 30),
        itemCount: activitiesList.length);
  }

  Widget _buildActivity(context, Activity activity) {
    Random random = Random();
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ProfilePage()));
      },
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: randomPinkList[random.nextInt(randomPinkList.length)],
                shape: BoxShape.circle),
            child: Image.asset(activity.user.imgUrl!),
            width: 60,
          ),
          SizedBox(width: 10),
          Flexible(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      activity.user.name!,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${DateTime.now().difference(activity.timestamp).inMinutes} minutes ago',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  activity.actionText,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 16, wordSpacing: 1.5, color: Colors.black54),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
