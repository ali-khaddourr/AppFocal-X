import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      bottomNavigationBar: Container(
        width: double.infinity,
        height:  MediaQuery.of(context).size.height *0.15,
        child: SvgPicture.asset('assets/images/bottomNB.svg',width: double.infinity,)
      ),
    );
  }
}
