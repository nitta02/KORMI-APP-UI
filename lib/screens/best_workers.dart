import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kormi_app_ui/constants/colors.dart';
import 'package:kormi_app_ui/widgets/text.dart';

class BestWorkersScreen extends StatelessWidget {
  const BestWorkersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double customHeight = MediaQuery.of(context).size.height;
    double customWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.back,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return workerLists(
                  customHeight: customHeight, customWidth: customWidth);
            },
          ),
        ),
      ),
    );
  }
}

class workerLists extends StatelessWidget {
  const workerLists({
    super.key,
    required this.customHeight,
    required this.customWidth,
  });

  final double customHeight;
  final double customWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          height: customHeight * 0.08,
          width: customWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: color4,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Del Pero',
                fontSize: 17,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.9,
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        const Image(
          image: AssetImage(
            'assets/icons/worker.png',
          ),
          height: 90,
        ),
      ],
    );
  }
}
