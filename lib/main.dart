import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_sliding_up_panel/flutter_sliding_up_panel.dart';
import 'menuwidget.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Completer<GoogleMapController> _controller = Completer();
  SlidingUpPanelController panelController = SlidingUpPanelController();

  static final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(30.013607034639907, 31.293561040411674),
    zoom: 15,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maps"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _initialCameraPosition,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          SlidingUpPanelWidget(child: MenuWidget(),
            controlHeight: 50.0,
              anchor: 0.4,
              panelController:panelController,
            onTap: (){
              ///Customize the processing logic
              if(SlidingUpPanelStatus.expanded==panelController.status){
                panelController.expand();
              }else{
                panelController.anchor();
              }
            },

          enableOnTap: true,)
        ]
      ),
    );
  }
}





