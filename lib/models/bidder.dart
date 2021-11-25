import 'dart:math';

class Bidder {
  String? name;
  DateTime? date;
  num? price;
  Bidder({this.name, this.date, this.price});
  static List<Bidder> generateBidders() {
    Random rand = Random();
    return [
      Bidder(name: "John Doe", date: DateTime.now().add(Duration(seconds: rand.nextInt(600))), price: rand.nextDouble()),
      Bidder(name: "Silvester Stogether", date: DateTime.now().add(Duration(seconds: rand.nextInt(600))), price: rand.nextDouble()),
      Bidder(name: "Josias Pacatau", date: DateTime.now().add(Duration(seconds: rand.nextInt(600))), price: rand.nextDouble()),
      Bidder(name: "Ednaldo Pereira", date: DateTime.now().add(Duration(seconds: rand.nextInt(600))), price: rand.nextDouble()),
      Bidder(name: "Sayuri Mattar", date: DateTime.now().add(Duration(seconds: rand.nextInt(600))), price: rand.nextDouble()),
      Bidder(name: "Venoninho Extreme", date: DateTime.now().add(Duration(seconds: rand.nextInt(600))), price: rand.nextDouble()),
      Bidder(name: "Ricardo Thomé", date: DateTime.now().add(Duration(seconds: rand.nextInt(600))), price: rand.nextDouble()),
    ];
  }
}