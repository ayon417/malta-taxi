import 'package:flutter/material.dart';
import 'package:malta_taxi/view/components/maps/location_widget.dart';

class TripConfirmedBody extends StatefulWidget {
  final bool isMapvisible;
  const TripConfirmedBody({super.key, required this.isMapvisible});

  @override
  State<TripConfirmedBody> createState() => _TripConfirmedBodyState();
}

class _TripConfirmedBodyState extends State<TripConfirmedBody> {
  @override
  Widget build(BuildContext context) {
    return MapWidget(
      isVisible: widget.isMapvisible,
    );
  }
}
