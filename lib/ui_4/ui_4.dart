import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_4/sign_in_page.dart';

class Ui4 extends StatelessWidget {
  const Ui4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("UI 4"))),
      backgroundColor: const Color(0xFF202020),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/perosn.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "BAKING LESSONS\n",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      TextSpan(
                        text: "MASTER THE ART OF BAKING",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => const SignInPage()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 25),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 26,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xFFFFBD73),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "START LEARNING",
                            style: const TextStyle(color: Color(0xFFFFBD73)).copyWith(color: Colors.black),
                          ),
                          const SizedBox(width: 10,),
                          const Icon(Icons.arrow_forward, color: Colors.black,),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
