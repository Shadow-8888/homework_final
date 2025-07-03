import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset("icons/backward.svg", height: 11),
                  ),
                  SvgPicture.asset("icons/ui_3_menu.svg", height: 11),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                padding: const EdgeInsets.all(6),
                height: 305,
                width: 305,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF5E1CB),
                  image: DecorationImage(image: AssetImage("assets/images/image_1.png"), fit: BoxFit.cover),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "Vegan salad bowl\n",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "With red tomato",
                          style: TextStyle(
                            color: const Color(0xFF1D150B).withAlpha(128),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "\$20",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ).copyWith(color: const Color(0xFFFB475F)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 17,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFB475F).withAlpha(48),
                        borderRadius: BorderRadius.circular(27),
                      ),
                      child: Row(
                        children: [
                          const Text(
                            "Add to bag",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 30),
                          SvgPicture.asset("icons/ui_3_forward.svg", height: 11),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFFFB475F).withAlpha(66),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFFB475F),
                            ),
                            child: SvgPicture.asset("assets/icons/bag.svg"),
                          ),
                          Positioned(
                            right: 15,
                            bottom: 10,
                            child: Container(
                              alignment: Alignment.center,
                              height: 28,
                              width: 28,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFFFFFFF),
                              ),
                              child: Text(
                                "0",
                                style: const TextStyle(fontWeight: FontWeight.bold).copyWith(
                                  color: const Color(0xFFFB475F),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
