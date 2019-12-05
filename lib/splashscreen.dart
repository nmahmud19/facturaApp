import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  startTime() async {
    var _duration = new Duration(
        seconds: 3);
    return new Timer(
        _duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/NavigationHomeScreen');
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/fon_factura.png'),
                    fit: BoxFit.cover
                )
            ),
          ),

          Center(
            child: new Image.asset('assets/factura_logo.png', width: 220.0,),
             ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SpinKitFadingCircle(color: Colors.white, size: 30,),
                ],
              ),
            ],
          ),
        ],
    );

  }
}

//login splash
//class LoginSplash extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Stack(
//      children: <Widget>[
//        Container(
//          decoration: BoxDecoration(
//              image: DecorationImage(
//                  image: AssetImage('assets/fon_factura.png'),
//                  fit: BoxFit.cover
//              )
//          ),
//           child:  Center(
//              child: new Image.asset('assets/factura_logo.png', width: 220.0,),
//            ),
//        ),
//
//        Container(
//          padding: EdgeInsets.only(top: 400),
//          alignment: Alignment.center,
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.spaceAround,
//            children: [
//              RaisedButton(
//                  shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(10)
//                  ),
//                  color: Colors.white,
//                  child: Text("Войти"),
//                  onPressed: (){
//                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
//                  }
//              ),
//            ],
//          ),
//        ),
//      ],
//    );
//  }
//}
