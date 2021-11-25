import 'package:artes_nft/models/profile.dart';
import 'package:flutter/material.dart';

class PersonInfo extends StatelessWidget {
  final Profile profile;

  const PersonInfo(this.profile, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(profile.imgUrl ?? ''),
          ),
          const SizedBox(height: 20),
          Text(
            profile.name ?? '',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(height: 5),
          Text(
            profile.twitter ?? '',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 18,
            ),
          ),
          Text(
            profile.description ?? '',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black54,
              fontSize: 16,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(profile.email ?? '',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                height: 1.5,
              )),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}
