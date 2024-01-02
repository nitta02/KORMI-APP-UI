import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kormi_app_ui/constants/colors.dart';
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
    double customHeight = MediaQuery.of(context).size.height;
    double customWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 15,
            right: 15,
            bottom: 10,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Hello Tanmoy',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.9,
                      ),
                      CustomText(
                        text: 'Find the best worker',
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.9,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.search,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        backgroundImage:
                            const AssetImage('assets/icons/worker.png'),
                        backgroundColor: color1,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: customHeight * 0.25,
                width: customWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: color4,
                  image: const DecorationImage(
                    image: AssetImage('assets/icons/worker.png'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
