import 'package:flutter/material.dart';
import 'package:malta_taxi/view/components/maps/location_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const MapWidget(
        isVisible: true,
      ),
    );
  }
}
