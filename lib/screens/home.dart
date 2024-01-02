import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kormi_app_ui/constants/colors.dart';
import 'package:kormi_app_ui/screens/best_workers.dart';
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              //UPPER SECTION---------------------------
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
                        text: 'Welcome to KORMI',
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
                  color: color2,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      height: customHeight * 0.18,
                      width: customWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: color4,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomText(
                              text: 'Find the best worker',
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.9,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            TextButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                color2,
                              )),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const BestWorkersScreen(),
                                    ));
                              },
                              child: const CustomText(
                                text: 'Check Now',
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.9,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Image(image: AssetImage('assets/icons/worker.png')),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              //WORKER SECTION---------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: 'Category',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.9,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const CustomText(
                      text: 'See All',
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.9,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return categoryWorkers(
                      customHeight: customHeight, customWidth: customWidth);
                },
              )),

              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: 'Active Workers',
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.9,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const CustomText(
                      text: 'See All',
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.9,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return activeWoker_Section(
                      customHeight: customHeight, customWidth: customWidth);
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class categoryWorkers extends StatelessWidget {
  const categoryWorkers({
    super.key,
    required this.customHeight,
    required this.customWidth,
  });

  final double customHeight;
  final double customWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            height: customHeight * 0.1,
            width: customWidth * 0.5,
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
            fit: BoxFit.fill,
            height: 120,
          ),
        ],
      ),
    );
  }
}

class activeWoker_Section extends StatelessWidget {
  const activeWoker_Section({
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
