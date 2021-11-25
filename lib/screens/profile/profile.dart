import 'package:artes_nft/models/profile.dart';
import 'package:artes_nft/screens/profile/widgets/custom_grid.dart';
import 'package:artes_nft/screens/profile/widgets/person_info.dart';
import 'package:artes_nft/screens/profile/widgets/tab_sliver_delegate.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final profile = Profile.generateProfile();
  final tabs = ['Creations', 'Collections'];
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(context),
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (
                BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverToBoxAdapter(
                  child: PersonInfo(profile),
                ),
                SliverPersistentHeader(delegate: TabSliverDelegate(
                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.black,
                    tabs: tabs.map((e) => Tab(
                      child: Text(e,
                      style: const TextStyle(
                        fontSize: 18,
                      )),
                    )
                    ).toList(),
                  )
                ),
                pinned: true
                )
              ];
            },
            body: TabBarView(
              children: [
                CustomGrid('creations', profile.creations!),
                CustomGrid('collections', profile.collections!),
              ],
            ),
          ),
        ),
    );
  }

  _buildAppBar(context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: _buildIcon(context, Icons.arrow_back_ios_outlined, back: true),
      actions: [
        _buildIcon(context, Icons.more_vert_outlined)
    ],
    );
  }

  IconButton _buildIcon(context, IconData icon, {back = false}) {
    return IconButton(
      onPressed: back ? () => Navigator.of(context).pop() : null,
      splashRadius: 34,
      icon: Icon(
      icon,
      color: Colors.black,
      size: 29,
    ),);
  }
}
