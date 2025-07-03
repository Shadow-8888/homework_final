import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_11/pages/checkout_page.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            "assets/images/Media.png",
            width: double.infinity,
            fit: BoxFit.contain,
          ),
        ),
        Column(
          children: [
            const SizedBox(height: 258),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(128),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(128),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 47, horizontal: 20),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Boston Lettuce",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          letterSpacing: 0.41,
                          color: Color.fromRGBO(45, 12, 87, 1),
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const SizedBox(height: 16),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "1.10 ",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(45, 12, 87, 1),
                              ),
                            ),
                            TextSpan(
                              text: "€",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(149, 134, 168, 1),
                              ),
                            ),
                            TextSpan(
                              text: " / piece",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(149, 134, 168, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "~ 150 gr / piece",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          letterSpacing: -0.41,
                          color: Color.fromRGBO(6, 190, 119, 1),
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const SizedBox(height: 32),
                      const Text(
                        "Spain",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          letterSpacing: -0.41,
                          color: Color.fromRGBO(45, 12, 87, 1),
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const SizedBox(height: 16,),
                      const Text(
                        "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          letterSpacing: -0.41,
                          color: Color.fromRGBO(149, 134, 168, 1),
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const SizedBox(height: 56,),
                      Row(
                        children: [
                          Container(
                            width: 78,
                            height: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromRGBO(217, 208, 227, 1),
                                width: 1
                              )
                            ),
                            child: const Text(""),
                          ),
                          const SizedBox(width: 21,),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (c) => const CheckoutPage()));
                              },
                              child: Container(
                                height: 56,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 19,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(11, 206, 131, 1),
                                ),
                                child: const Text(""),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
