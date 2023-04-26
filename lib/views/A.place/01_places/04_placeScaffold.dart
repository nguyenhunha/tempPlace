
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../decoration/colors.dart';
import '../../../data/place/01_place/01.Place.Model.Controller.dart';
import '../../../data/place/01_place/02.AreaPreview.Model.Controller.dart';
import '../../widgets/widgetAppBarTitle.dart';
import '05_widgetAreaPreView.dart';

class placeScaffold extends StatefulWidget {
  final PlaceModel currentPlace;
  const placeScaffold({
    Key? key,
    required this.currentPlace,
  }) : super(key: key);

  @override
  _placeScaffoldState createState() => _placeScaffoldState();
}

class _placeScaffoldState extends State<placeScaffold> {
  //GetxController with GetBuilder
  // late AreaPreviewController _previewAreaController = Get.put(
  //   AreaPreviewController(
  //     ApiProvider(),
  //     this.widget.currentPlace.customerEmail,
  //   ),
  // );
  var showInfo = false;

  @override
  void initState() {
    super.initState();
  }

  AreaPreviewController dataAreaPreview = AreaPreviewController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    late String placeName = widget.currentPlace.placeName;
    late String address = widget.currentPlace.address;
    address += ', P. ' + widget.currentPlace.wardName;

    
    
    return Scaffold(
      appBar: AppBar(
        // elevation: 1,
        backgroundColor: SmartyColors.tertiary,
        iconTheme: IconThemeData(color: SmartyColors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widgetAppBarTitle(
              currentPage: showInfo == true ? '04_placeScaffold.dart' : '',
              title: placeName,
              subtitle: address,
            ),
          ],
        ),
      ),
      body: Container(
        width: width,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          color: SmartyColors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10.0,
              color: Colors.black.withOpacity(0.1),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,                
                child: GetBuilder<AreaPreviewController>(
                  init: dataAreaPreview,
                  builder: (val) {
                    return Column(
                      children: [
                        for (var currentItem in val.dataAreaPreviews)
                          if (currentItem.placeId ==
                              widget.currentPlace.placeId)
                            widgetAreaPreView(width: width, areaModel: currentItem)
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
