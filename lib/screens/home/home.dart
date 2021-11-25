import 'package:artes_nft/constants/colors.dart';
import 'package:artes_nft/screens/home/widgets/activies_list.dart';
import 'package:artes_nft/screens/home/widgets/recent_follows.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Publication Feed',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
            RecentFollows(),
            ActivitiesList(),
          ],
        ),
      ),
    );
  }
}
