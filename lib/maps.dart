import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapsPage extends StatelessWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Mapas'),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(-27.311871, -55.895330),
          zoom: 17.0,
        ),
        layers: [
          TileLayerOptions(
              urlTemplate:
                  "https://api.mapbox.com/styles/v1/gerooo00/cl3xco6zz001214mg7qo8um0u/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZ2Vyb29vMDAiLCJhIjoiY2wzeGNlc3hwMDFhYzNqbWgycmtnb24wayJ9.WKhyisqZ3GuXE1xDQkvIRA",
              additionalOptions: {
                'accessToken':
                    'pk.eyJ1IjoiZ2Vyb29vMDAiLCJhIjoiY2wzeGNlc3hwMDFhYzNqbWgycmtnb24wayJ9.WKhyisqZ3GuXE1xDQkvIRA',
                'id': 'mapbox.mapbox-streets-v8'
              }),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(-27.3, -55.8),
                builder: (ctx) => Container(),
              ),
            ],
          ),
        ],
        nonRotatedChildren: [
          AttributionWidget.defaultWidget(
            source: 'OpenStreetMap contributors',
            onSourceTapped: () {},
          ),
        ],
      ));
}
