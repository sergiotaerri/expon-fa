import 'package:artes_nft/models/profile.dart';

class Activity {
  Profile user;
  String actionText;
  DateTime timestamp;

  Activity(this.user, this.actionText, this.timestamp);


  static List<Activity> generateActivities() {
    return [
      Activity(Profile.generateProfile(), "Just followed you",
          DateTime.now().subtract(Duration(minutes: 5))),
      Activity(Profile.generateProfile(), "Made a new publication",
          DateTime.now().subtract(Duration(minutes: 4))),
      Activity(Profile.generateProfile(), "Just followed you",
          DateTime.now().subtract(Duration(minutes: 3))),
      Activity(Profile.generateProfile(), "Just added a new collection",
          DateTime.now().subtract(Duration(minutes: 2))),
      Activity(Profile.generateProfile(), "Just followed you",
          DateTime.now().subtract(Duration(minutes: 1))),
    ];
  }
}