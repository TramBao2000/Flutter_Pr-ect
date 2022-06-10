import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iowallet/presentation/customWidgets/CustomButtonBottom.dart';
import 'package:camera/camera.dart';
import 'package:iowallet/presentation/mainView/kyc/GuideVideoScreen.dart';

backSideCapture() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      home: BacksideCaptureWidget(
        camera: firstCamera,
      ),
    ),
  );
}

class BacksideCaptureWidget extends StatefulWidget {
  const BacksideCaptureWidget({
    Key? key,
    required this.camera,
  }) : super(key: key);

  final CameraDescription camera;

  @override
  _BacksideCaptureWidgetState createState() => _BacksideCaptureWidgetState();
}

class _BacksideCaptureWidgetState extends State<BacksideCaptureWidget> {
  bool status = true;
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  void _moveToGuideVideoCaptureScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GuideVideoSCreen(),
        ));
  }

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.low,
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Xác thực tài khoản'),
      ),
      body: SingleChildScrollView(
          child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Text(
                "2/3 Chụp mặt sau giấy tờ",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF2C84D4),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 19.0, bottom: 28.0),
              child: Text(
                "Quý khách vui lòng đưa mặt sau CMND vào khung hình, hệ thống sẽ thực hiện chụp tự động:",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: FutureBuilder<void>(
                future: _initializeControllerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    // If the Future is complete, display the preview.
                    return Container(
                        width: double.infinity,
                        height: 190,
                        child: AspectRatio(
                          aspectRatio: 190,
                          child: CameraPreview(_controller),
                        ));
                  } else {
                    // Otherwise, display a loading indicator.
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 19.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          "Chụp tự động",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                      Switch(
                        activeColor: Color(0xFF50F76B),
                        value: status,
                        onChanged: (value) {
                          print("VALUE : $value");
                          setState(() {
                            status = value;
                          });
                        },
                      ),
                    ],
                  ),
                  status == false
                      ? Container(
                          margin: const EdgeInsets.only(top: 18.0),
                          alignment: Alignment.center,
                          child: InkResponse(
                            child: Image(
                                width: 45,
                                height: 45,
                                image: AssetImage("assets/icons/icCamera.png")),
                            onTap: () async {
                              try {
                                await _initializeControllerFuture;
                              } catch (e) {
                                print(e);
                              }
                            },
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            CustomButtonBottom(
                textTitle: "Tiếp tục",
                method: _moveToGuideVideoCaptureScreen)
          ],
        ),
      )),
    );
  }

  moveToBacksideCaptureScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => backSideCapture(),
        ));
  }
}
