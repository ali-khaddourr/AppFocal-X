import 'package:flutter/material.dart';

import '../core/const_data/app_colors.dart';
import '../core/const_data/my_size.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor ;
  final Color textColor;
  final void Function()? onpressed;

  const CustomButton({super.key, required this.text, required this.backgroundColor, required this.textColor, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MySize.la),
      child: Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: MaterialButton(
                onPressed:
                  onpressed
                ,
                child: Text(text,
                    style: TextStyle(color: textColor,fontSize: MySize.fontSizeMd)),
                color: backgroundColor,
                height: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(MySize.borderRedius), // Border radius here
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
