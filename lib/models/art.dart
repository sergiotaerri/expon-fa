import 'package:artes_nft/models/bidder.dart';

class Art {
  String? imgUrl;
  String? name;
  num? price;
  String? description;

  List<Bidder>? bids;
  List<Bidder>? history;

  Art({
    this.imgUrl,
    this.name,
    this.price,
    this.description,
    this.bids,
    this.history,
  });
}
