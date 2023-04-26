import 'package:get/get.dart';

class DeviceGroupSummaryOnAreaModel {
  final int areaId;
  final String deviceGroupName;
  final String deviceCode;
  final int working;
  final int total;

  const DeviceGroupSummaryOnAreaModel({
    required this.areaId,
    required this.deviceGroupName,
    required this.deviceCode,
    required this.working,
    required this.total,
  });
}

class DeviceGroupSummaryOnAreaController extends GetxController {
  List<DeviceGroupSummaryOnAreaModel> dataAreaPreviews = [
    DeviceGroupSummaryOnAreaModel(
      areaId: 13,
      deviceGroupName: "Bộ điều khiển cửa",
      deviceCode: "door",
      working: 0,
      total: 06),
  DeviceGroupSummaryOnAreaModel(
      areaId: 13,
      deviceGroupName: "Bộ điều khiển đèn",
      deviceCode: "light",
      working: 04,
      total: 08),
  ];
}
