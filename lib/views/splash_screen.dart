import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/pose_detection_view.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: Color(0xf273338),
      minimumSize: Size(size.width * 0.85, 36),
      padding: EdgeInsets.symmetric(horizontal:16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
    );

    return Scaffold (
      backgroundColor: Color(0xffF5F5F5),
      body:Container(
        width: double.infinity,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.15,),
            Container(
              alignment:Alignment.center,
              width: size.width * 0.7,
              height: size.width * 0.7,

              child: Lottie.asset('assets/push-up-animation.json',
              fit: BoxFit.cover
              )
            ),
            SizedBox(height: 40,),
            const Text('Push Up Counteer',
              style: TextStyle(
                fontSize: 38.8,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.2
              ),
            ),
            Container (
              width: size.width * 0.7,
              child:const Text('An exiting app patner for your exercise routung',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.8,
                  letterSpacing: -1.1
                )
              ),
            ),
            Spacer(),
            ElevatedButton(
              style: raisedButtonStyle ,
              onPressed: () { 
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(_) => PoseDetectorView()),
                );

              },
              child: Text('Star Now')
            ), 
            SizedBox(
              height: size.height * 0.03,
            )
          ],
        ),
      ),
    );
  }
}