import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DebitCardPage extends StatelessWidget {
  const DebitCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 65),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color.fromRGBO(45, 12, 87, 1),
                ),
              ),
              const SizedBox(height: 23),
              const Text(
                "Credit / Debit card",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  letterSpacing: 0.41,
                  color: Color.fromRGBO(45, 12, 87, 1),
                ),
              ),
              const SizedBox(height: 21),
              Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(185, 147, 214, 1),
                      Color.fromRGBO(140, 166, 219, 1),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  image: const DecorationImage(
                    image: AssetImage("images/Ellipse.png"),
                    alignment: Alignment.centerRight,
                  ),
                ),
                padding: const EdgeInsets.only(
                  top: 32,
                  right: 30,
                  bottom: 31,
                  left: 29,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset("icons/mc_symbol.svg"),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      "4747  4747  4747  4747",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 26,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            offset: Offset(0, 0.7),
                            blurRadius: 3,
                            color: Color.fromRGBO(77, 5, 169, 0.3),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 46),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ALEXANDRA SMITH",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: Offset(0, 0.7),
                                blurRadius: 3,
                                color: Color.fromRGBO(77, 5, 169, 0.3),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "07/21",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: Offset(0, 0.7),
                                blurRadius: 3,
                                color: Color.fromRGBO(77, 5, 169, 0.3),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset("icons/photo.svg"),
              ),
              const SizedBox(height: 13),
              const Padding(
                padding: EdgeInsets.only(left: 14),
                child: Text(
                  "Name on card",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: -0.41,
                    color: Color.fromRGBO(149, 134, 168, 1),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color.fromRGBO(217, 208, 227, 1)),
                ),
                padding: const EdgeInsets.all(13),
                child: const Text(
                  "Alexandra Smith",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    letterSpacing: -0.41,
                    color: Color.fromRGBO(45, 12, 87, 1),
                  ),
                ),
              ),
              const SizedBox(height: 23),
              const Padding(
                padding: EdgeInsets.only(left: 14),
                child: Text(
                  "Card number",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: -0.41,
                    color: Color.fromRGBO(149, 134, 168, 1),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color.fromRGBO(217, 208, 227, 1)),
                ),
                padding: const EdgeInsets.all(13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "4747  4747  4747  4747",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        letterSpacing: -0.41,
                        color: Color.fromRGBO(45, 12, 87, 1),
                      ),
                    ),
                    SvgPicture.asset(
                      "icons/mc_symbol.svg",
                      width: 32,
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 23),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 14),
                          child: Text(
                            "Expiry date",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              letterSpacing: -0.41,
                              color: Color.fromRGBO(149, 134, 168, 1),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: const Color.fromRGBO(217, 208, 227, 1),
                            ),
                          ),
                          padding: const EdgeInsets.all(13),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "07/21",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  letterSpacing: -0.41,
                                  color: Color.fromRGBO(45, 12, 87, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 22,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 14),
                          child: Text(
                            "CVC",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              letterSpacing: -0.41,
                              color: Color.fromRGBO(149, 134, 168, 1),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: const Color.fromRGBO(217, 208, 227, 1),
                            ),
                          ),
                          padding: const EdgeInsets.all(13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "474",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  letterSpacing: -0.41,
                                  color: Color.fromRGBO(45, 12, 87, 1),
                                ),
                              ),
                              SvgPicture.asset("icons/Hint.svg"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 55,),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 19),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(10, 207, 131, 1),
                  borderRadius: BorderRadius.circular(8),
                  
                ),
                width: double.infinity,
                child: const Center(
                  child: Text(
                    "USE THIS CARD",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      letterSpacing: -0.01,
                      color: Colors.white
                    ),
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
