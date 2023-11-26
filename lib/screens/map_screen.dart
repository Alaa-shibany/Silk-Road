import 'dart:typed_data';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:custom_info_window/custom_info_window.dart';
import 'package:silk_road/translations/locale_keys.g.dart';

import 'dart:ui' as ui;

import 'package:silk_road/widgets/shops_screen/transperant.dart';

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample>
    with SingleTickerProviderStateMixin {
  late Position position;
  bool isLoading = false;
  CustomInfoWindowController customInfoWindowController =
      CustomInfoWindowController();
  Set<Marker> _marks = {};

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  void getCurrentLocation() async {
    setState(() {
      isLoading = true;
    });
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    _marks = {
      Marker(
        markerId: const MarkerId('1'),
        position: LatLng(
            position.latitude, position.longitude), // Set the marker's position
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: const InfoWindow(
          title: 'You',
        ),
      ),
      Marker(
          markerId: const MarkerId('2'),
          position: LatLng(position.latitude + 0.001,
              position.longitude), // Set the marker's position
          icon: BitmapDescriptor.fromBytes(await getBytesFromAsset(
              'assets/images/resturant.png',
              // ignore: use_build_context_synchronously
              MediaQuery.of(context).size.height ~/ 10)),
          onTap: () {
            customInfoWindowController.addInfoWindow!(
              Stack(
                children: [
                  Card(
                    margin: const EdgeInsets.all(8),
                    clipBehavior: Clip.hardEdge,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        FadeInImage(
                          placeholder: MemoryImage(kTransparentImage),
                          image: const AssetImage(
                              'assets/images/resturants/resturant1.png'),
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height / 5.5,
                          width: double.infinity,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          left: 0,
                          child: Container(
                            color: Colors.black54,
                            child: ListTile(
                              trailing: TextButton.icon(
                                onPressed: null,
                                icon: const Icon(
                                  Icons.timer,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  LocaleKeys.open.tr(),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              title: const Text(
                                'Restaurant A',
                                maxLines: 2,
                                textAlign: TextAlign.start,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: const Text(
                                'Make tako and showerma',
                                maxLines: 2,
                                textAlign: TextAlign.start,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              LatLng(position.latitude + 0.001, position.longitude),
            );
          }),
      Marker(
          markerId: const MarkerId('3'),
          position: LatLng(position.latitude,
              position.longitude + 0.001), // Set the marker's position
          icon: BitmapDescriptor.fromBytes(await getBytesFromAsset(
              'assets/images/vehicle.png',
              // ignore: use_build_context_synchronously
              MediaQuery.of(context).size.height ~/ 10)),
          onTap: () {
            customInfoWindowController.addInfoWindow!(
              Stack(
                children: [
                  Card(
                    margin: const EdgeInsets.all(8),
                    clipBehavior: Clip.hardEdge,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        FadeInImage(
                          placeholder: MemoryImage(kTransparentImage),
                          image:
                              const AssetImage('assets/images/cars/car1.png'),
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height / 5.5,
                          width: double.infinity,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          left: 0,
                          child: Container(
                            color: Colors.black54,
                            child: ListTile(
                              trailing: TextButton.icon(
                                onPressed: null,
                                icon: const Icon(
                                  Icons.timer,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  LocaleKeys.open.tr(),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              title: const Text(
                                'Restaurant A',
                                maxLines: 2,
                                textAlign: TextAlign.start,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: const Text(
                                'Make tako and showerma',
                                maxLines: 2,
                                textAlign: TextAlign.start,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              LatLng(position.latitude, position.longitude + 0.001),
            );
          }),
      Marker(
          markerId: const MarkerId('4'),
          position: LatLng(position.latitude,
              position.longitude - 0.001), // Set the marker's position
          icon: BitmapDescriptor.fromBytes(await getBytesFromAsset(
              'assets/images/bank.png',
              // ignore: use_build_context_synchronously
              MediaQuery.of(context).size.height ~/ 10)),
          onTap: () {
            customInfoWindowController.addInfoWindow!(
              Stack(
                children: [
                  Card(
                    margin: const EdgeInsets.all(8),
                    clipBehavior: Clip.hardEdge,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        FadeInImage(
                          placeholder: MemoryImage(kTransparentImage),
                          image:
                              const AssetImage('assets/images/bank/bank1.png'),
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height / 5.5,
                          width: double.infinity,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          left: 0,
                          child: Container(
                            color: Colors.black54,
                            child: ListTile(
                              trailing: TextButton.icon(
                                onPressed: null,
                                icon: const Icon(
                                  Icons.timer,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  LocaleKeys.open.tr(),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              title: const Text(
                                'Restaurant A',
                                maxLines: 2,
                                textAlign: TextAlign.start,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: const Text(
                                'Make tako and showerma',
                                maxLines: 2,
                                textAlign: TextAlign.start,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              LatLng(position.latitude, position.longitude - 0.001),
            );
          }),
    };
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  @override
  void dispose() {
    customInfoWindowController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Stack(
              children: [
                GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(position.latitude, position.longitude),
                    zoom: 17.0,
                  ),
                  markers: _marks,
                  myLocationEnabled: true,
                  onTap: (position) {
                    customInfoWindowController.hideInfoWindow!();
                  },
                  onCameraMove: (position) {
                    customInfoWindowController.onCameraMove!();
                  },
                  onMapCreated: (GoogleMapController controller) async {
                    customInfoWindowController.googleMapController = controller;
                  },
                ),
                CustomInfoWindow(
                  controller: customInfoWindowController,
                  height: MediaQuery.of(context).size.height / 5.5,
                  width: MediaQuery.of(context).size.width / 1,
                  offset: 50,
                ),
              ],
            ),
    );
  }
}
