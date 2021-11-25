import 'package:artes_nft/constants/colors.dart';
import 'package:artes_nft/models/art.dart';
import 'package:artes_nft/screens/detail/widgets/art_info.dart';
import 'package:artes_nft/screens/detail/widgets/bidder_list.dart';
import 'package:artes_nft/screens/detail/widgets/big_button.dart';
import 'package:artes_nft/screens/detail/widgets/detail_banner.dart';
import 'package:artes_nft/screens/profile/widgets/tab_sliver_delegate.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Art art;

  DetailPage(this.art, {Key? key}) : super(key: key);

  final tabs = ['Info', 'Birds', 'History'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: DefaultTabController(
            length: 3,
            initialIndex: 1,
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    elevation: 0,
                    expandedHeight: 330,
                    backgroundColor: buttonColor,
                    leading: _buildIcon(
                      context,
                      Icons.arrow_back_ios_outlined,
                      back: true
                    ),
                    actions: [
                      _buildIcon(
                          context,
                          Icons.more_vert_outlined,
                          back: false
                    ),
                    ],
                    flexibleSpace: FlexibleSpaceBar(
                      background: Detailbanner(art),
                    ),
                    pinned: true,
                  ),
                  SliverToBoxAdapter(
                    child: ArtInfo(art),
                  ),
                  SliverPersistentHeader(
                    delegate: TabSliverDelegate(
                      TabBar(
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey[400],
                        indicatorColor: Colors.black,
                        isScrollable: true,
                        labelPadding: EdgeInsets.only(left: 5, right: 40),
                        tabs: tabs.map((e) => Tab(child: Text(
                          e,
                          style: const TextStyle(fontSize: 18),
                        ),
                        )).toList(),
                      ),
                    ),
                    pinned: true,
                  )
                ];
              },
              body: TabBarView(
                children: [
                  ListView(children: const [],),
                  BidderList('bids', art.bids!),
                  BidderList('history', art.history!),
                ],
              ),
            )),
        floatingActionButton: const BigButton('Buy it now!'),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _buildIcon(BuildContext context, IconData icon, {bool back = false}) {
    return IconButton(
        onPressed: back ? () => Navigator.of(context).pop() : null,
        splashRadius: 34,
        icon: Icon(
          icon,
          color: Colors.black,
          size: 29,
        ));
  }
}
