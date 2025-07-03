import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modul4_jabborov/ui_11/pages/categories_page.dart';

class Ui11 extends StatelessWidget {
  const Ui11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("UI 11"))),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(162, 89, 255, 1),
          image: DecorationImage(
            image: AssetImage("assets/images/BG.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset("icons/ui_11_logo.svg"),
              const SizedBox(height: 186),
              SizedBox(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 64,
                    bottom: 54,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(246, 245, 245, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("icons/box-icon.svg"),
                      const SizedBox(height: 24),
                      const Text(
                        "Non-Contact Deliveries",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 34,
                          letterSpacing: 0.41,
                          color: Color.fromRGBO(45, 12, 87, 1),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        "When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.41,
                          color: Color.fromRGBO(149, 134, 168, 1),
                        ),
                      ),
                      const SizedBox(height: 48),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CategoriesPage(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(11, 206, 131, 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: const Text(
                            "Order Now",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              letterSpacing: -0.01,
                              color: Colors.white,
                              fontFamily: "Nunito",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      const Text(
                        "dismiss",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          letterSpacing: -0.01,
                          color: Color.fromRGBO(149, 134, 168, 1),
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
    );
  }
}
