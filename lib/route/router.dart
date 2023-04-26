import 'package:get/get.dart';

import '../views/A.place/01_places/01_placeGetView.dart';


var router = [
  GetPage(
    name: "/place",    
    page: () => placeGetView(),
    transition: Transition.fadeIn,
  ),

];
