import 'package:flutter/material.dart';
import '../../../data/place/01_place/01.Place.Model.Controller.dart';
import '03_placeBottomTabBarContent.dart';

class placeTabControllerInit extends StatefulWidget {
  final List<PlaceModel> placeModel;
  const placeTabControllerInit({
    Key? key,
    required this.placeModel,
  }) : super(key: key);
  @override
  _placeTabControllerInitState createState() => _placeTabControllerInitState();
}

class _placeTabControllerInitState extends State<placeTabControllerInit>
    with TickerProviderStateMixin {
  late TabController _tabController;

  List<Widget> _tabBarViewContent = <Widget>[];

  @override
  void initState() {
    _tabBarViewContent = <Widget>[
      placeBottomTabBarContent(
        placeList: this.widget.placeModel,
      )
    ];

    _tabController = TabController(
      length: _tabBarViewContent.length,
      vsync: this,
    );

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // return Text('');
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        children: _tabBarViewContent,
        controller: _tabController,
      ),
    );
  }
}
