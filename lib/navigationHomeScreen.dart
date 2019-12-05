
import 'package:flutter/material.dart';
import 'package:yt_portfolio2/customDrawer/drawerUserController.dart';
import 'package:yt_portfolio2/customDrawer/homeDrawer.dart';
import 'package:yt_portfolio2/saveScreen.dart';
import 'package:yt_portfolio2/sendScreen.dart';
import 'package:yt_portfolio2/factura/HomeScreen.dart';
import 'package:yt_portfolio2/getScreen.dart';

import 'appTheme.dart';

class NavigationHomeScreen extends StatefulWidget {
  @override
  _NavigationHomeScreenState createState() => _NavigationHomeScreenState();
}

class _NavigationHomeScreenState extends State<NavigationHomeScreen> {
  Widget screenView;
  DrawerIndex drawerIndex;
  AnimationController sliderAnimationController;

  @override
  void initState() {
    drawerIndex = DrawerIndex.HOME;
    screenView = HomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: DrawerUserController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            animationController: (AnimationController animationController) {
              sliderAnimationController = animationController;
            },
            onDrawerCall: (DrawerIndex drawerIndexdata) {
              changeIndex(drawerIndexdata);
            },
            screenView: screenView,
          ),
        ),
      ),
    );
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      if (drawerIndex == DrawerIndex.HOME) {
        setState(() {
          screenView = HomeScreen();
        });
      } else if (drawerIndex == DrawerIndex.Send) {
        setState(() {
          screenView = SendScreen();
        });
      } else if (drawerIndex == DrawerIndex.Save) {
        setState(() {
          screenView = SaveScreen();
        });
      } else if (drawerIndex == DrawerIndex.Get) {
        setState(() {
          screenView = GetScreen();
        });
      } else {
        //do in your way......
      }
    }
  }
}