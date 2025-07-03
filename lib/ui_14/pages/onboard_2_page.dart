import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_14/pages/onboard_3_page.dart';

class Onboard2Page extends StatelessWidget {
  const Onboard2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 450,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        child: Image.asset("images/onboard_2.png", fit: BoxFit.cover),
                      ),
                    ),
                    const Positioned(
                      top: 16,
                      right: 16,
                      child: Text(
                        'Skip',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 305,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          text: 'It’s a big world out there go ',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(27, 30, 40, 1),
                          ),
                          children: [
                            TextSpan(
                              text: 'explore',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 112, 41, 1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'To get the best of your adventure you just need to leave and go where you like. we are waiting for you',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(125, 132, 141, 1),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(radius: 4, backgroundColor: Color.fromRGBO(202, 234, 255, 1)),
                          SizedBox(width: 6),
                          CircleAvatar(radius: 4, backgroundColor: Color.fromRGBO(13, 110, 253, 1)),
                          SizedBox(width: 6),
                          CircleAvatar(radius: 4, backgroundColor: Color.fromRGBO(202, 234, 255, 1)),
                        ],
                      ),
                      const SizedBox(height: 40,),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (c) => const Onboard3Page()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(13, 110, 253, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: const Text(
                            'Next',
                            style: TextStyle(fontSize: 16, color: Colors.white),
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
    );
  }
}