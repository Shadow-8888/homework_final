import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modul4_jabborov/ui_11/pages/debit_card_page.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color.fromRGBO(217, 208, 227, 1), 
              width: 1,
            ),
          ),
        ),
        child: BottomNavigationBar(
          unselectedLabelStyle: const TextStyle(fontSize: 0),
          selectedLabelStyle: const TextStyle(fontSize: 0),
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "icons/grid.svg",
                colorFilter: ColorFilter.mode(
                  selectedIndex == 0
                      ? const Color.fromRGBO(114, 3, 255, 1)
                      : const Color.fromRGBO(149, 134, 168, 1),
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "icons/shopping-cart.svg",
                colorFilter: ColorFilter.mode(
                  selectedIndex == 1
                      ? const Color.fromRGBO(114, 3, 255, 1)
                      : const Color.fromRGBO(149, 134, 168, 1),
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "icons/user.svg",
                colorFilter: ColorFilter.mode(
                  selectedIndex == 2
                      ? const Color.fromRGBO(114, 3, 255, 1)
                      : const Color.fromRGBO(149, 134, 168, 1),
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 57, left: 21, bottom: 22),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(246, 245, 245, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(20),
                    blurRadius: 18,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
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
                  const SizedBox(width: 142),
                  const Text(
                    "Checkout",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      letterSpacing: -0.41,
                      color: Color.fromRGBO(45, 12, 87, 1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Payment method",
                        style: TextStyle(
                          color: Color.fromRGBO(45, 12, 87, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          letterSpacing: -0.41,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (c) => const DebitCardPage()));
                        },
                        child: const Text(
                          "CHANGE",
                          style: TextStyle(
                            color: Color.fromRGBO(114, 3, 255, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            letterSpacing: -0.01,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  const Row(
                    children: [
                      Icon(Icons.payment),
                      SizedBox(width: 25),
                      Text(
                        "**** **** **** 4747",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          letterSpacing: -0.41,
                          color: Color.fromRGBO(149, 134, 168, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 48),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery address",
                        style: TextStyle(
                          color: Color.fromRGBO(45, 12, 87, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          letterSpacing: -0.41,
                        ),
                      ),
                      Text(
                        "CHANGE",
                        style: TextStyle(
                          color: Color.fromRGBO(114, 3, 255, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          letterSpacing: -0.01,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.home_filled),
                      SizedBox(width: 25),
                      Text(
                        "Alexandra Smith\n Cesu 31 k-2 5.st, SIA Chili\n Riga\n LV–1012\n Latvia",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          letterSpacing: -0.41,
                          color: Color.fromRGBO(149, 134, 168, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 48),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery options",
                        style: TextStyle(
                          color: Color.fromRGBO(45, 12, 87, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          letterSpacing: -0.41,
                        ),
                      ),
                      Text(
                        "CHANGE",
                        style: TextStyle(
                          color: Color.fromRGBO(114, 3, 255, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          letterSpacing: -0.01,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  const Row(
                    children: [
                      Icon(Icons.payment),
                      SizedBox(width: 25),
                      Text(
                        "I’ll pick it up myself",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          letterSpacing: -0.41,
                          color: Color.fromRGBO(149, 134, 168, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 48),
                  const Row(
                    children: [
                      Icon(Icons.payment),
                      SizedBox(width: 25),
                      Text(
                        "By courier",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          letterSpacing: -0.41,
                          color: Color.fromRGBO(149, 134, 168, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 48),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.payment,
                            color: Color.fromRGBO(114, 3, 255, 1),
                          ),
                          SizedBox(width: 25),
                          Text(
                            "By Drone",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              letterSpacing: -0.41,
                              color: Color.fromRGBO(114, 3, 255, 1),
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.check, color: Color.fromRGBO(114, 3, 255, 1)),
                    ],
                  ),
                  const SizedBox(height: 56),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Non-contact-delivery",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          letterSpacing: -0.41,
                          color: Color.fromRGBO(45, 12, 87, 1),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(226, 203, 255, 1),
                          borderRadius: BorderRadius.circular(35.6),
                        ),
                        padding: const EdgeInsets.only(
                          top: 2,
                          right: 2,
                          bottom: 2,
                          left: 14,
                        ),
                        child: Row(
                          children: [
                            const Text(
                              "Yes",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                letterSpacing: -0.41,
                                color: Color.fromRGBO(108, 14, 228, 1),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 26,
                              height: 26,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.03),
                                    offset: Offset(0, 3),
                                    blurRadius: 1,
                                  ),
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.01),
                                    offset: Offset(0, 1),
                                    blurRadius: 1,
                                  ),
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.01),
                                    offset: Offset(0, 3),
                                    blurRadius: 8,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 48,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
