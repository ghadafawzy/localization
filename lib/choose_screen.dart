import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization_simple_app/shopping_screen.dart';
import 'package:localization_simple_app/widgets/custom_button.dart';
class ChooseScreen extends StatefulWidget {
  const ChooseScreen({super.key});

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(text: tr('ar'),onpressed: (){
              context.setLocale(Locale('ar', 'EG'));
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShoppingScreen()),
              ); // Navigate to shopping screen
            },),
            SizedBox(height: 20,),
            CustomButton(text: tr('en'),onpressed: (){
              context.setLocale(Locale('en', 'US'));
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShoppingScreen()),
              ); // Navigate to shopping screen
            },),
          ],
        ),
      ),
    );
  }
}
