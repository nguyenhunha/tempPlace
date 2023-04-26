
//models
import 'package:get/get.dart';

class PlaceModel {
	 String		customerEmail;
	 int			  placeId;
	 String		placeName;
	 String		address;
	 String		wardName;
	 String		districtName;
	// String		provinceName;
	// String		countryName;

	PlaceModel ({
		required this.customerEmail,
		required this.placeId,
		required this.placeName,
		required this.address,
		required this.wardName,
		required this.districtName,
		// required this.provinceName,
		// required this.countryName,
	});  
}



class PlaceController extends GetxController {
  List<PlaceModel> dataPlaces = [
    PlaceModel(
        customerEmail: "nguyenhuunha@gmail.com",
        placeId: 2,
        placeName: "Nhà máy thủy sản Phương Đông",
        districtName: "Quận Bình Thuỷ",
        wardName: "Phường Trà Nóc",
        address: "Lô 29A KCN Trà Nóc 1"
      ),
    PlaceModel(
        customerEmail: "nguyenhuunha@gmail.com",
        placeId: 3,
        placeName: "Biệt Thự Hoa Chuông Vàng",
        districtName: "Quận Bình Thuỷ",
        wardName: "Phường Thới An Đông",
        address: "Đường Nguyễn Chí Thanh"
      ),
  ];
}