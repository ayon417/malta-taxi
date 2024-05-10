import 'package:flutter/material.dart';
import 'package:malta_taxi/view/components/maps/location_widget.dart';

class TripCompletedBody extends StatelessWidget {
  const TripCompletedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const MapWidget(
      isVisible: true,
    );
  }
}
