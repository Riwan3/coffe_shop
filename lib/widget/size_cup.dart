import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:coffe_shop/theme.dart';

class sizeCup extends StatefulWidget {
  const sizeCup({Key? key}) : super(key: key);
  @override
  State createState() => _sizeCupState();
}

class _sizeCupState extends State {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget sizeContent(int index, String ukuran) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          width: 85,
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 12),
          decoration: selectedIndex == index
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: colorTheme,
                )
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: colorTheme)),
          child: Text(
            ukuran,
            style: selectedIndex == index
                ? semiboldText.copyWith(fontSize: 24)
                : regulerText.copyWith(fontSize: 24),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        sizeContent(0, 'S'),
        sizeContent(1, 'M'),
        sizeContent(2, 'L'),
      ],
    );
  }
}
