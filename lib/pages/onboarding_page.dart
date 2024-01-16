import 'package:coffe_shop/pages/second_page.dart';
import 'package:coffe_shop/theme.dart';
import 'package:flutter/material.dart';

class onboardingPage extends StatelessWidget {
  const onboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg_images.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              SizedBox(
                height: 480,
              ),
              Center(
                child: Text(
                  'Sweet &\nNaise Coffee',
                  textAlign: TextAlign.center,
                  style: boldText.copyWith(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Naise Coffee can change The \natmosphere in the morning',
                textAlign: TextAlign.center,
                style: regulerText.copyWith(fontSize: 12),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - (2 * 58),
                height: 55.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 7,
                      backgroundColor: colorTheme,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => secondPage()));
                  },
                  child: Text(
                    "Order Now",
                    style: semiboldText,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
