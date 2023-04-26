import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:temp_place/data/place/01_place/01.Place.Model.Controller.dart';


import '02_placeTabControllerInit.dart';

// ignore: must_be_immutable
class placeGetView extends GetView<PlaceController> {
  @override
  Widget build(BuildContext context) {
    //get parameter from router
    late String customerEmail = Get.parameters['customerEmail'].toString();

    PlaceController dataPlace = PlaceController();

    return GetBuilder<PlaceController>(
          init: dataPlace,
          builder: (val) {
            return placeTabControllerInit(placeModel: dataPlace.dataPlaces);
          },
        );
              
  }
}