import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final int currentPage;

  const ProgressIndicatorWidget({Key? key, required this.currentPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIndicator(isActive: currentPage == 0),
        SizedBox(width: 8),
        _buildIndicator(isActive: currentPage == 1),
        SizedBox(width: 8),
        _buildIndicator(isActive: currentPage == 2),
      ],
    );
  }

  Widget _buildIndicator({required bool isActive}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 5,
      width: isActive ? 42 : 28,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.green,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
