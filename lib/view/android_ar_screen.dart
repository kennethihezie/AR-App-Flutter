/*
* Created by collins ihezie 27/07/2020
* For Android Augmented Reality
* */
import 'package:flutter/material.dart';



class AndroidArScreen extends StatefulWidget {
  final title;
  const AndroidArScreen({Key? key, this.title}) : super(key: key);

  @override
  State<AndroidArScreen> createState() => _AndroidArScreenState();
}

class _AndroidArScreenState extends State<AndroidArScreen> {/*
  late ArCoreController controller;
  Timer? timer;*/

 /* @override
  void dispose() {
    timer?.cancel();
    controller.dispose();
    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        /* child: ArCoreView(
           onArCoreViewCreated: _onArCoreController,
         ),*/
        child: Center(
          child: Text("Not Implemented yet....."),
        ),
      ),
    );
  }

/*
  _onArCoreController(ArCoreController controller){
    this.controller = controller;

    final material = ArCoreMaterial(
        color: Color.fromARGB(120, 66, 134, 244),
    );

    final sphere = ArCoreSphere(
      radius: 0.1,
      materials: [material]
    );

    final node = ArCoreNode(
      shape: sphere,
      position: Vector3(0, 0, -1.5)
    );

    this.controller.addArCoreNode(node);


    timer = Timer.periodic(const Duration(microseconds: 50), (timer) {
      final rotation = node.position;
      rotation.value += Vector3(0.01, 0, 0);
    });
  }
*/
}
