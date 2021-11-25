import 'package:artes_nft/constants/colors.dart';
import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final String text;

  const BigButton(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 56,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: RawMaterialButton(
        fillColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 0,
        child: Container(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              fontSize: 20
            ),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
