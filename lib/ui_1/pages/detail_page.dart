import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
          color: Color(0xFFF5F4EF),
          image: DecorationImage(
            image: AssetImage("assets/images/ux_big.png"),
            alignment: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset("assets/icons/arrow-left.svg"),
                      ),
                      SvgPicture.asset("assets/icons/more-vertical.svg"),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Design Thinking",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/person.svg"),
                      const SizedBox(width: 5),
                      const Text("18k"),
                      const SizedBox(width: 20),
                      SvgPicture.asset("assets/icons/star.svg"),
                      const SizedBox(width: 5),
                      const Text("4.8"),
                    ],
                  ),
                  const SizedBox(height: 30),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "\$50",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "\$70",
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Expanded(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Course Content",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(height: 20),
                            ContentWidget(
                              index: "01",
                              duration: "5.35 mins",
                              name: "Welcome to the Course",
                              isFinished: true,
                            ),
                            SizedBox(height: 20),
                            ContentWidget(
                              index: "02",
                              duration: "19.04 mins",
                              name: "Design thinking Process - \nIntro",
                              isFinished: true,
                            ),
                            SizedBox(height: 20),
                            ContentWidget(
                              index: "03",
                              duration: "12.48 mins",
                              name: "Design thinking Process",
                              isFinished: false,
                            ),
                            SizedBox(height: 20),
                            ContentWidget(
                              index: "04",
                              duration: "32.54 mins",
                              name: "Customer Perspective",
                              isFinished: false,
                            ),
                            SizedBox(height: 80),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 4),
                              blurRadius: 50,
                              color: Colors.black.withAlpha(51),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(14),
                              height: 56,
                              width: 80,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFEDEE),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/shopping-bag.svg",
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: const Color(0xFF6E8AFA),
                                ),
                                child: const Text(
                                  "Buy Now",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  final String index;
  final String duration;
  final String name;
  final bool isFinished;
  const ContentWidget({
    super.key,
    required this.index,
    required this.duration,
    required this.name,
    required this.isFinished,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              index,
              style: const TextStyle(
                fontSize: 32,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(duration, style: const TextStyle(color: Colors.grey)),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: isFinished ? Colors.green : Colors.green.withAlpha(128),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Icon(Icons.play_arrow, color: Colors.white),
        ),
      ],
    );
  }
}
