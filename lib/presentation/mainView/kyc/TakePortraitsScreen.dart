import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iowallet/presentation/mainView/kyc/BacksideCaptureScreen.dart';
import 'package:iowallet/presentation/mainView/kyc/FrontCameraOCR.dart';
import 'package:camera/camera.dart';
import 'package:iowallet/presentation/mainView/kyc/FrontCaptureScreen.dart';
import 'package:iowallet/presentation/mainView/kyc/InformationVerify.dart';


takePortraitsCapture() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      home: TakePortraitsWidget(
        // Pass the appropriate camera to the TakePictureScreen widget.
        camera: firstCamera,
      ),
    ),
  );
}
class TakePortraitsWidget extends StatefulWidget {
  const TakePortraitsWidget({
    Key? key,
    this.titleScreen = "",
    this.noteTitle = "",
    this.typeCamera="",
    required this.camera,
  }) : super(key: key);

  final String titleScreen;
  final String noteTitle;
  final String typeCamera;
  final CameraDescription camera;


  @override
  _TakePortraitsWidgetState createState() => _TakePortraitsWidgetState();
}

class _TakePortraitsWidgetState extends State<TakePortraitsWidget> {
  bool status = true;
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera,
      // Define the resolution to use.
      ResolutionPreset.low,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Text(
              "3/3 Chụp chân dung",
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
              "Quý khách vui lòng canh chỉnh gương mặt nằm trong khung hình, hệ thống sẽ thực hiện chụp tự động:",
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
                  return
                    Container(
                        width: double.infinity,
                        height: 190,
                        decoration: new BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          borderRadius: new BorderRadius.all(
                            Radius.elliptical(
                              90,
                              190,
                            ),
                          ),
                        ),
                        child: AspectRatio(
                          aspectRatio: 190,
                          child: CameraPreview(_controller),
                        )) ;
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
                      // Take the Picture in a try / catch block. If anything goes wrong,
                      // catch the error.
                      try {
                        // Ensure that the camera is initialized.
                        await _initializeControllerFuture;

                        // Attempt to take a picture and get the file `image`
                        // where it was saved.
                        final image = await _controller.takePicture();

                        // If the picture was taken, display it on a new screen.
                        await Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DisplayPictureScreen(
                              // Pass the automatically generated path to
                              // the DisplayPictureScreen widget.
                              imagePath: image.path,
                            ),
                          ),
                        );
                      } catch (e) {
                        // If an error occurs, log the error to the console.
                        print(e);
                      }
                    },
                  ),
                )
                    : Container(),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Row(
                    children: [
                      Text(
                        'xác thực tài khoản',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    primary: Color(0xFF2C84D4),
                  ),
                  onPressed: () => moveToInformationVerifyScreen(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  moveToInformationVerifyScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => InformationVerifyWidget(),
        ));
  }
}
