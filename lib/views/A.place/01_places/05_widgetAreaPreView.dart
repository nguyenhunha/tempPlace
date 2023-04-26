import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../decoration/typography.dart';
import '../../../data/place/01_place/02.AreaPreview.Model.Controller.dart';
import '../../../data/place/01_place/03.DeviceGroupSummaryOnArea.Model.Controller.dart';

class widgetAreaPreView extends StatelessWidget {
  final double width;
  final AreaPreviewModel areaModel;
  widgetAreaPreView({
    Key? key,
    required this.width,
    required this.areaModel,
  }) : super(key: key);

  //GetxController with GetBuilder
  DeviceGroupSummaryOnAreaController dataDeviceGroupSummaryOnArea = DeviceGroupSummaryOnAreaController();

  @override
  Widget build(BuildContext context) {
    var customerEmail = areaModel.customerEmail;
    var placeId = areaModel.placeId;
    var areaId = areaModel.areaId;
    var areaName = areaModel.areaName;
    var fileName = 'widgetAreaPreView.dart';
    var path = '/area?customerEmail=$customerEmail';
    path = path + '&placeId=$placeId&selectedAreaId=$areaId';
    var showInfo = false;
    var showCurrentWidget = showInfo == true ? fileName + "\n" + path : "";
    return Container(
      child: InkWell(
          onTap: () => {},//Get.toNamed(path)
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: width * 5 / 6,
                      child: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GetBuilder<
                                  DeviceGroupSummaryOnAreaController>(
                                init: dataDeviceGroupSummaryOnArea,
                                builder: (val) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      myText(areaName, 16, Colors.black,
                                          0.6, 800, 'left'),
                                      myText(showCurrentWidget, 6,
                                          Colors.black, 0.7, 600, 'L'),
                                      for (var item in val.dataAreaPreviews)
                                        if (item.areaId == areaModel.areaId)
                                          widgetDeviceGroupPreviewOnArea(
                                              xModel: item)
                                    ],
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
            ],
          )),
    );
  }
}

class widgetDeviceGroupPreviewOnArea extends StatelessWidget {
  final DeviceGroupSummaryOnAreaModel xModel;
  const widgetDeviceGroupPreviewOnArea({
    Key? key,
    required this.xModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = xModel.deviceGroupName +
        (xModel.deviceCode == 'light' ? ' (đang ON)' : '');
    var summary = xModel.deviceCode == 'light'
        ? '0' + xModel.working.toString() + '/0' + xModel.total.toString()
        : '0' + xModel.total.toString();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          myText(title, 14, Colors.black, 0.4, 500, 'left'),
          myText(summary, 14, Colors.black, 0.5, 600, 'right'),
        ],
      ),
    );
  }
}
