import 'package:flutter/material.dart';


import 'empty_failure_no_internet_view.dart';

class widgetOnEmpty extends StatelessWidget {
  const widgetOnEmpty({
    Key? key,
    // required this.controller,
  }) : super(key: key);

  // final PlaceController controller;

  @override
  Widget build(BuildContext context) {
    return EmptyFailureNoInternetView(
      image: 'lottie/empty_lottie.json',
      title: 'Content unavailable',
      description: 'Content not found',
      buttonText: "Retry",
      onPressed: () {
        // controller.getPlaces();
      },
    );
  }
}
