
import 'package:flutter/material.dart';
import 'empty_failure_no_internet_view.dart';

class widgetNetworkError extends StatelessWidget {
  const widgetNetworkError({
    Key? key,
    // required this.controller,
  }) : super(key: key);

  // final PlaceController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: EmptyFailureNoInternetView(
        image: 'lottie/no_internet_lottie.json',
        title: 'Network Error',
        description: 'Internet not found !!',
        buttonText: "Retry",
        onPressed: () {
          // controller.getPlaces();
        },
      ),
    );
  }
}
