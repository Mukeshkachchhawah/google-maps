import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMaps extends StatelessWidget {
  const GoogleMaps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      GoogleMap(
        markers: {
          Marker(
              markerId: MarkerId("Jodhpur"), position: LatLng(26.2389, 73.0243))
        },
        //  mapType: MapType.satellite,

        myLocationEnabled: true,
        // onMapCreated: _onMapCreated,
        initialCameraPosition:
            CameraPosition(target: LatLng(26.2389, 73.0243), zoom: 14.4746),
      ),
      Container(
        margin: EdgeInsets.only(top: 80, right: 10),
        alignment: Alignment.topRight,
        child: Column(children: <Widget>[
          FloatingActionButton(
              child: Icon(Icons.layers),
              elevation: 5,
              backgroundColor: Colors.teal[200],
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Maps Types",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Icon(Icons.close)
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomContaine("Default"),
                              CustomContaine("Default"),
                              CustomContaine("Default")
                            ],
                          ),
                          Divider(),
                          Column(
                            //crossAxisAlignment: Cr,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomContaine("Default"),
                                  CustomContaine("Default"),
                                  CustomContaine("Default"),
                                  CustomContaine("Default")
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                //   mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomContaine("Default"),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  CustomContaine("Default"),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  CustomContaine("Default")
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                );
              }),
        ]),
      ),
    ]));
  }

  Widget CustomContaine(String text) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.blueGrey, borderRadius: BorderRadius.circular(20)),
        ),
        SizedBox(
          height: 14,
        ),
        Text(text)
      ],
    );
  }
}
