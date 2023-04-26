
import 'package:flutter/material.dart';


import '../../../data/place/01_place/01.Place.Model.Controller.dart';
import '../../../decoration/colors.dart';
import '../../../decoration/myText.dart';
import '04_placeScaffold.dart';

class placeBottomTabBarContent extends StatefulWidget {
  final List<PlaceModel> placeList;
  const placeBottomTabBarContent({
    Key? key,
    required this.placeList,
  }) : super(key: key);

  @override
  _placeBottomTabBarContentState createState() => _placeBottomTabBarContentState();
}

class _placeBottomTabBarContentState extends State<placeBottomTabBarContent>
    with TickerProviderStateMixin {
  final List<Widget> _tabHeader = [];
  final List<Widget> _placeList = [];

  late TabController _tabController;

  


  @override
  void initState() {
    super.initState();

    int i = 0;
    for (var currentElement in widget.placeList) {
      i = i + 1;
      _tabHeader.add(Tab(child: Text(i.toString())));
      _placeList.add(
        Tab(
          child: placeScaffold(
            currentPlace: currentElement,
          ),
        ),
      );
    }
    _tabController = TabController(
      length: _tabHeader.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void onTabTapped(int index) {
    _tabController.index = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: _placeList,
            ),
          ),
          Center(
            child: TabBar(
              indicatorWeight: 1.0,
              padding: const EdgeInsets.only(left: 0),
              controller: _tabController,
              isScrollable: true,
              labelColor: SmartyColors.black60,
              unselectedLabelColor: SmartyColors.grey30,
              indicatorPadding: const EdgeInsets.only(top: 0),
              labelStyle: myTextStyle(
                  14, Color.fromARGB(255, 196, 164, 164), 1.0, FontWeight.w800),
              tabs: _tabHeader,
              onTap: onTabTapped,
            ),
          ),
        ],
      ),
    );
  }
}
