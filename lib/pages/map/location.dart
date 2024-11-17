import 'package:animated_marker/animated_marker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:monie_homes/theme/colors.dart';
import 'package:monie_homes/theme/text_style.dart';

import '../../service/map_location.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController;

  final Set<Marker> _sMarkers = {};
  final Set<Marker> _aMarkers = {};

  Future<void> _setMapStyle() async {
    String style = await rootBundle.loadString('assets/map_style.json');
    mapController?.setMapStyle(style);

    var loc = await LocationService().getData();
    if (loc != null) {
      LatLng newLatLng = LatLng(loc.latitude!, loc.longitude!);
      LatLng hQ = LatLng(37.7749, -122.4194);
      mapController?.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: newLatLng, zoom: 12),
        ),
      );

      _sMarkers.add(
        Marker(
          markerId: MarkerId('myLocation'),
          position: newLatLng,
          icon: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueOrange,
          ),
          infoWindow: InfoWindow(
            title: 'Home',
            onTap: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: primaryOrange,
                title: Text('Home',style: smallText(primaryWhite),),
              ),
            ),
          ),
        ),
      );
      _aMarkers.add(
        Marker(
          markerId: MarkerId('static-1'),
          position: hQ,
          icon: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueOrange,
          ),
          infoWindow: InfoWindow(
            title: 'Head Quarters',
            onTap: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Head Quarters'),
              ),
            ),
          ),
        ),
      );
    }

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _setMapStyle());
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    _setMapStyle();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;


    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: AnimatedMarker(
          staticMarkers: _sMarkers,
          animatedMarkers: _aMarkers,
          duration: const Duration(seconds: 3),
          fps: 30,
          curve: Curves.easeOut,
          builder: (context, animatedMarkers) => GoogleMap(
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            markers: animatedMarkers,
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: LatLng(37.7749, -122.4194),
              zoom: 12,
            ),
          ),
        ),
      ),
    );
  }
}
