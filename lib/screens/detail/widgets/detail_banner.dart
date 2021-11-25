import 'package:artes_nft/models/art.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class Detailbanner extends StatelessWidget {
  final Art art;

  const Detailbanner(this.art, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          height: 400,
          width: double.maxFinite,
          child: Hero(
            tag: art.imgUrl!,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                art.imgUrl!,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          right: 30,
          bottom: 30,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.favorite_outline_outlined,
              color: Colors.pink,
            ),
          ),
        )
      ],
    );
  }
}
