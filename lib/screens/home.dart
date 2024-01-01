import 'package:flutter/material.dart';
import 'package:kormi_app_ui/widgets/image.dart';
import 'package:kormi_app_ui/widgets/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(6.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        CustomAssetImage(
                          assetName: 'assets/icons/worker.png',
                          height: 25,
                        ),
                        CustomText(
                          text: 'KORMI',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
