import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/location_picker/location_picker_view_model.dart';
import 'package:malta_taxi/view/screens/splash/splash_view_model.dart';

class MapWidget extends ConsumerStatefulWidget {
  final bool? isVisible;
  const MapWidget({super.key, this.isVisible});

  @override
  ConsumerState<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends ConsumerState<MapWidget> {
  late GoogleMapController _mapController;
  final Set<Marker> _markers = <Marker>{};



  double onmapset(double position) {
    return position;
  }

  void mapCreated(GoogleMapController controller) {
    setState(() {
      _mapController = controller;
      _mapController.setMapStyle(ref.read(splashViewModelProvider).mapStyle);
      Future.delayed(const Duration(seconds: 1), () {
        _mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target:  LatLng(double.parse(ref.watch(locationPickerViewModelProvider).getUserCurrentLocationLat)- 0.004,
               double.parse(ref.watch(locationPickerViewModelProvider).getUserCurrentLocationLng)),
              zoom: 15.4,
            ),
          ),
        );
      });

      // markers();
    });
  }

  // Future<void> markers() async {
  //   _markers.addAll([
  //     Marker(
  //       markerId: const MarkerId('id-1'),
  //       position:  LatLng(double.parse(ref.watch(locationPickerViewModelProvider).getUserCurrentLocationLat), double.parse(ref.watch(locationPickerViewModelProvider).getUserCurrentLocationLng)),
  //       icon: await BitmapDescriptor.fromAssetImage(
  //         const ImageConfiguration(
  //           size: Size(38, 38),
  //         ),
  //         'assets/icons/maps/home.png',
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
  // }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.isVisible ?? true,
      child: GoogleMap(
        onMapCreated: mapCreated,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition: CameraPosition(
        target:  LatLng(double.parse(ref.watch(locationPickerViewModelProvider).getUserCurrentLocationLat)- 0.004, 
        double.parse(ref.watch(locationPickerViewModelProvider).getUserCurrentLocationLng),),
        zoom: 13.4,
        ),
        indoorViewEnabled: true,
        buildingsEnabled: false,
        markers: _markers,        
        cameraTargetBounds: CameraTargetBounds(
          LatLngBounds(
            northeast: const LatLng(36.089852, 14.567042),
            southwest: const LatLng(35.786556, 14.190281),
          ),
        ),
      ),
    );
  }
}
