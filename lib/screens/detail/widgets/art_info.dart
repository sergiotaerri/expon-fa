import 'package:artes_nft/models/art.dart';
import 'package:artes_nft/models/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ArtInfo extends StatelessWidget {
  final Art art;
  ArtInfo(this.art, {Key? key}) : super(key: key);

  final Profile profile = Profile.generateProfile();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            art.name!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              _buildIconText(profile.imgUrl!,
              0,
              'Creator',
              profile.twitter!.substring(1)),
              const SizedBox(width: 110),
              _buildIconText('assets/images/eth.png', 8, 'Current bid', '${art.price} ETH')
            ],
          ),
          const SizedBox(height: 25),
          Text(art.description!,
            style: const TextStyle(
              wordSpacing: 3,
              height: 1.5,
              color: Colors.black87,
            ),

          )
        ],
      ),
    );
  }

  _buildIconText(String imgUrl, double padding, String title, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          child: Image.asset(imgUrl),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
              style: const TextStyle(
                color: Colors.black45,
              ),),
            Text(text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                height: 1.5,
              ),),
          ],
        )
      ],
    );
  }
}
