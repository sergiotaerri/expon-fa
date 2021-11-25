import 'package:artes_nft/models/art.dart';
import 'package:artes_nft/models/bidder.dart';

class Profile {
  String? imgUrl;
  String? name;
  String? twitter;
  String? description;
  String? email;

  List<Art>? creations;
  List<Art>? collections;

  Profile(
      {this.imgUrl,
      this.name,
      this.twitter,
      this.description,
      this.email,
      this.creations,
      this.collections});

  static Profile generateProfile() {
    return Profile(
        imgUrl: 'assets/images/avatar.png',
        twitter: '@zyzz',
        name: 'Alfair',
        description:
            '3D artist from Aracaju, Sergipe. His work is all about colors, balance and emotion.',
        email: 'email@email.com',
        creations: [
          Art(
            imgUrl: 'assets/images/create1.jpeg',
            name: 'Arta',
            price: 0.8309,
            description: 'Art for sale',
            bids: Bidder.generateBidders(),
            history: Bidder.generateBidders(),
          ),
          Art(
            imgUrl: 'assets/images/create2.jpeg',
            name: 'Arte',
            price: 0.8309,
            description: 'Art for sale',
            bids: Bidder.generateBidders(),
            history: Bidder.generateBidders(),
          ),
          Art(
            imgUrl: 'assets/images/create3.jpeg',
            name: 'Arti',
            price: 0.8309,
            description: 'Art for sale',
            bids: Bidder.generateBidders(),
            history: Bidder.generateBidders(),
          ),
          Art(
            imgUrl: 'assets/images/create4.jpeg',
            name: 'Arto',
            price: 0.8309,
            description: 'Art for sale',
            bids: Bidder.generateBidders(),
            history: Bidder.generateBidders(),
          ),
          Art(
            imgUrl: 'assets/images/create5.jpeg',
            name: 'Artu',
            price: 0.8309,
            description: 'Art for sale',
            bids: Bidder.generateBidders(),
            history: Bidder.generateBidders(),
          ),
        ],
        collections: [
          Art(
            imgUrl: 'assets/images/collection1.jpeg',
            name: 'Artx',
            price: 0.8309,
            description: 'Art for sale',
            bids: Bidder.generateBidders(),
            history: Bidder.generateBidders(),
          ),
          Art(
            imgUrl: 'assets/images/collection2.jpeg',
            name: 'Arty',
            price: 0.8309,
            description: 'Art for sale',
            bids: Bidder.generateBidders(),
            history: Bidder.generateBidders(),
          ),
          Art(
            imgUrl: 'assets/images/collection3.jpeg',
            name: 'Artz',
            price: 0.8309,
            description: 'Art for sale',
            bids: Bidder.generateBidders(),
            history: Bidder.generateBidders(),
          ),
          Art(
            imgUrl: 'assets/images/collection4.jpeg',
            name: 'Artj',
            price: 0.8309,
            description: 'Art for sale',
            bids: Bidder.generateBidders(),
            history: Bidder.generateBidders(),
          ),
        ]);
  }
}
