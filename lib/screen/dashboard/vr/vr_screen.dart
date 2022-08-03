import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:turiba/screen/dashboard/home/model/place.dart';
import 'package:turiba/utils/app_color.dart';

import '../search/search_screen.dart';

class VrScreen extends StatefulWidget {
  final Place place;
  const VrScreen({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  State<VrScreen> createState() => _VrScreenState();
}

class _VrScreenState extends State<VrScreen> {
  late CameraController controller;
  List<CameraDescription> cameras = [];
  Future<void> getCameras() async {
    WidgetsFlutterBinding.ensureInitialized();
  }

  _asyncMethod() async {
    cameras = await availableCameras();
    controller = CameraController(cameras[0], ResolutionPreset.medium);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBlackColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Text(
              "Enfoca el sitio en donde te encuentras",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28.0),
                  child: AspectRatio(
                    aspectRatio: 1 / 1.8,
                    child: cameras.isNotEmpty
                        ? CameraPreview(
                            controller,
                          )
                        : Container(),
                  ),
                ),
                Positioned(
                  top: 500,
                  left: 10,
                  child: SizedBox(
                    height: 150,
                    width: 340,
                    child: PlaceWidget(
                      place: widget.place,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
