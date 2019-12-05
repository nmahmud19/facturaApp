import 'package:flutter/material.dart';
import 'package:yt_portfolio2/factura/AppTheme.dart';
import 'package:yt_portfolio2/factura/model/homeListData.dart';

class HotelListView extends StatelessWidget {
  final VoidCallback callback;
  final FacturaListData hotelData;
  final AnimationController animationController;
  final Animation animation;

  const HotelListView({Key key, this.hotelData, this.animationController, this.animation, this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return Center(
          child: FadeTransition(
            opacity: animation,
            child: new Transform(
              transform: new Matrix4.translationValues(0.0, 50 * (1.0 - animation.value), 0.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 10),
                child: InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {
                    callback();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          offset: Offset(4, 4),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      onTap: (){},

                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        child: Stack(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  color: FacturaAppTheme.buildLightTheme().backgroundColor,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  hotelData.titleTxt,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18,
                                                  ),
                                                ),

                                                //Creater
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 4),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Text(
                                                        "Создатель",
                                                        style: TextStyle(fontSize: 12, color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Text(
                                                        "${hotelData.creator}",
                                                        style: TextStyle(fontSize: 18),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                //creator

                                                //document
                                                Padding(
                                                      padding: const EdgeInsets.only(top: 4),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Text("Тип документа",
                                                            style: TextStyle(fontSize: 12, color: Colors.grey),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                Padding(
                                                  padding: const EdgeInsets.only(),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Text(
                                                        "${hotelData.document}",
                                                        style: TextStyle(fontSize: 18),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                //document

                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),

                            //status
                            Positioned(
                              top: 8,
                              right: 8,
                              child: Material(
                                color: Colors.transparent,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:  Text(
                                      hotelData.status,
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            //status

                            //data
                            Positioned(
                              top: 114,
                              right: 8,
                              bottom: 5,
                              child: Material(
                                color: Colors.transparent,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:  Text(
                                    hotelData.data,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //data

                          ],
                        ),

                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}