
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:malta_taxi/utils/utils.dart';

class TripProceedBody extends ConsumerStatefulWidget {
  final bool isVisible;
  const TripProceedBody({super.key, required this.isVisible});

  @override
  ConsumerState<TripProceedBody> createState() => _TripProceedBodyState();
}

class _TripProceedBodyState extends ConsumerState<TripProceedBody> {
  late GoogleMapController _mapController;
  final Set<Polyline> _polylines = <Polyline>{};
  final Set<Marker> _markers = <Marker>{};
  final PolylinePoints polylinePoints = PolylinePoints();
  final List<LatLng> result = <LatLng>[];
  double startLatitude = 22.577056633105347;
  double startLongitude = 88.43434616942693;
  double destinationLatitude = 22.552850904998113;
  double destinationLongitude = 88.4059125949303;

  static final CameraPosition _kGoogle = CameraPosition(
    target: LatLng(
      double.parse(35.875084.toString()),
      14.475510,
    ),
    zoom: 13.4,
  );

  void mapCreated(GoogleMapController controller) {
    setState(() {
      _mapController = controller;
      loadCustomMapStyle().then((style) {
        _mapController.setMapStyle(style);
      });
      // markers();
    });
  }

  // Future<void> markers() async {
  //   _markers.addAll([
  //     Marker(
  //       markerId: const MarkerId('pickup'),
  //       position: LatLng(startLatitude, startLongitude),
  //       icon: await BitmapDescriptor.fromAssetImage(
  //         const ImageConfiguration(
  //           size: Size(38, 38),
  //         ),
  //         'assets/icons/maps/pickup.png',
  //       ),
  //     ),
  //     Marker(
  //       markerId: const MarkerId('drop'),
  //       position: LatLng(destinationLatitude, destinationLongitude),
  //       icon: await BitmapDescriptor.fromAssetImage(
  //         const ImageConfiguration(
  //           size: Size(38, 38),
  //         ),
  //         'assets/icons/maps/drop.png',
  //       ),
  //     ),
  //     Marker(
  //       markerId: const MarkerId('id-2'),
  //       anchor: const Offset(0.5, 0.5),
  //       rotation: 90.0,
  //       position: const LatLng(22.5767692470886, 88.4347840447502),
  //       icon: await BitmapDescriptor.fromAssetImage(
  //         const ImageConfiguration(
  //           size: Size(28, 28),
  //         ),
  //         'assets/icons/maps/car.png',
  //       ),
  //     ),
  //     Marker(
  //       markerId: const MarkerId('id-3'),
  //       position: const LatLng(22.574849507850075, 88.43373855036333),
  //       rotation: 90,
  //       icon: await BitmapDescriptor.fromAssetImage(
  //         const ImageConfiguration(
  //           size: Size(28, 28),
  //         ),
  //         'assets/icons/maps/car.png',
  //       ),
  //     ),
  //     Marker(
  //       markerId: const MarkerId('id-4'),
  //       anchor: const Offset(0.5, 0.5),
  //       rotation: 180,
  //       position: const LatLng(22.578201249348268, 88.43551702411648),
  //       icon: await BitmapDescriptor.fromAssetImage(
  //         const ImageConfiguration(
  //           size: Size(28, 28),
  //         ),
  //         'assets/icons/maps/car.png',
  //       ),
  //     ),
  //     Marker(
  //       markerId: const MarkerId('id-5'),
  //       position: const LatLng(22.577761203790704, 88.43255926597944),
  //       rotation: 90,
  //       icon: await BitmapDescriptor.fromAssetImage(
  //         const ImageConfiguration(
  //           size: Size(28, 28),
  //         ),
  //         'assets/icons/maps/car.png',
  //       ),
  //     ),
  //   ]);
  //   // getDirections();
  // }

  Future<String> loadCustomMapStyle() async {
    return await rootBundle.loadString('assets/maps/maps.json');
  }

  // Future<void> getDirections() async {
  //   final PolylineResult polylineResult =
  //       await polylinePoints.getRouteBetweenCoordinates(
  //     AppConstants.googleMapKey,
  //     PointLatLng(startLatitude, startLongitude),
  //     PointLatLng(destinationLatitude, destinationLongitude),
  //   );

  //   if (polylineResult.points.isNotEmpty) {
  //     for (final point in polylineResult.points) {
  //       result.add(LatLng(point.latitude, point.longitude));
  //       setState(() {});
  //     }
  //   } else {
  //     Logger.printError("No Polyline Found");
  //   }
  //   log(result.toString());
  //   setState(() {
  //     _polylines.add(
  //       Polyline(
  //         endCap: Cap.roundCap,
  //         polylineId: const PolylineId('polyline'),
  //         color: primaryColor,
  //         width: 4,
  //         points: result,
  //       ),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.isVisible,
      child: GoogleMap(
        polylines: _polylines,
        onMapCreated: mapCreated,
        myLocationEnabled: true,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition: _kGoogle,
        indoorViewEnabled: true,
        buildingsEnabled: false,
        markers: _markers,
      ),
    );
  }
}
