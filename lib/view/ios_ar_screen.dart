import 'dart:async';
import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

/*
* Created by collins ihezie 27/07/2020
* For Ios Augmented Reality
* */

class IosArScreen extends StatefulWidget {
  final title;
  const IosArScreen({Key? key, this.title}) : super(key: key);

  @override
  State<IosArScreen> createState() => _IosArScreenState();
}

class _IosArScreenState extends State<IosArScreen> {
  late ARKitController arKitController;
  Timer? timer;

  @override
  void dispose() {
    timer?.cancel();
    arKitController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Container(
          child: ARKitSceneView(
            onARKitViewCreated: _onARKitViewCreated,
          ),
        ));
  }

  _onARKitViewCreated(ARKitController arKitController) {
    this.arKitController = arKitController;
    //The Ar material
    final material = ARKitMaterial(
        lightingModelName: ARKitLightingModel.lambert,
        diffuse: ARKitMaterialProperty.image('assets/images/wimtorq.png'));

    //Make the material to be sphere in shape
    final sphere = ARKitSphere(materials: [material], radius: 0.1);

    //The ar node
    final node = ARKitNode(
        geometry: sphere,
        position: Vector3(0, 0, 0.5),
        eulerAngles: Vector3.zero());

    //add the node to the controller
    this.arKitController.add(node);

    timer = Timer.periodic(const Duration(microseconds: 50), (timer) {
      final rotation = node.eulerAngles;
      rotation.x += 0.01;
      node.eulerAngles = rotation;
    });
  }
}
