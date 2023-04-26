import 'package:get/get.dart';

class AreaPreviewModel {
  final String customerEmail;
  final int placeId;
  final int areaId;
  final String areaName;

  const AreaPreviewModel({
    required this.customerEmail,
    required this.placeId,
    required this.areaId,
    required this.areaName,
  });
}



class AreaPreviewController extends GetxController {
  List<AreaPreviewModel> dataAreaPreviews = [
    AreaPreviewModel(
      customerEmail: "nguyenhuunha@gmail.com",
      placeId: 2,
      areaId: 16,
      areaName: "Bảo trì"
    ),
  AreaPreviewModel(
      customerEmail: "nguyenhuunha@gmail.com",
      placeId: 2,
      areaId: 14,
      areaName: "Bảo vệ"
    ),
  AreaPreviewModel(
      customerEmail: "nguyenhuunha@gmail.com",
      placeId: 2,
      areaId: 15,
      areaName: "Căn teen"
    ),
  AreaPreviewModel(
      customerEmail: "nguyenhuunha@gmail.com",
      placeId: 2,
      areaId: 18,
      areaName: "Nhà xưởng số 1"
    ),
  AreaPreviewModel(
      customerEmail: "nguyenhuunha@gmail.com",
      placeId: 2,
      areaId: 19,
      areaName: "Nhà xưởng số 2"
    ),
  AreaPreviewModel(
      customerEmail: "nguyenhuunha@gmail.com",
      placeId: 2,
      areaId: 13,
      areaName: "Văn phòng"
    ),
  AreaPreviewModel(
      customerEmail: "nguyenhuunha@gmail.com",
      placeId: 2,
      areaId: 19,
      areaName: "Xử lý nước"
    ),
  ];
}
