import 'dart:math';

import 'package:artes_nft/constants/colors.dart';
import 'package:artes_nft/models/bidder.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BidderCard extends StatelessWidget {
  final Bidder bidder;

  const BidderCard(this.bidder, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    randomPinkList[random.nextInt(randomPinkList.length - 1)],
              )),
          const SizedBox(width: 10),
          Column(
            children: [
              Text(
                'Bid placed by ${bidder.name}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '${DateFormat('d/M/y').format(bidder.date!)} at ${bidder.date!.hour}',
                style: TextStyle(
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        ]),
        Container(
            padding: EdgeInsets.only(top: 3.5),
            child: Text(
              '${bidder.price!.toStringAsFixed(4)} ETH',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ))
      ],
    );
  }
}
