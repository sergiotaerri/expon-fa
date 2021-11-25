import 'package:artes_nft/models/bidder.dart';
import 'package:artes_nft/screens/detail/widgets/bidder_card.dart';
import 'package:flutter/material.dart';

class BidderList extends StatelessWidget {
  final String scrollKey;
  final List<Bidder> bidderList;

  const BidderList(this.scrollKey, this.bidderList, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemBuilder: (_, index) => BidderCard(bidderList[index]),
        separatorBuilder: (_, index) => const SizedBox(height: 15),
        itemCount: bidderList.length,
      ),
    );
  }
}
