import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle_fill), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SectionTitle("Recommended ", "courses"),
              const SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CourseCard(image: "images/img1.png"),
                    CourseCard(image: "images/img2.png"),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              const SectionTitle("Top ", "trending"),
              const SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CourseCard(image: "images/img3.png"),
                    CourseCard(image: "images/img4.png"),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              const SectionTitle("Our top picks ", "for you"),
              const SizedBox(height: 10),
              const BigCard(image: "images/img5.png"),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  final String boldPart;

  const SectionTitle(this.title, this.boldPart, {super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title,
        style: const TextStyle(fontSize: 18, color: Colors.black),
        children: [
          TextSpan(
            text: boldPart,
            style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String image;

  const CourseCard({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 4)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Image.asset(image, fit: BoxFit.cover, width: double.infinity, height: 88,)),
          const SizedBox(height: 8),
          const Text("Junior Scholars Institute", style: TextStyle(fontWeight: FontWeight.w600)),
          const Text("Joe Brown", style: TextStyle(color: Colors.grey)),
          const Row(
            children: [
              Icon(Icons.star, size: 14, color: Colors.orange),
              Text("5  (1,454)"),
              Spacer(),
              Text("\$24", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  final String image;

  const BigCard({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset(image, width: 130, height: 100, fit: BoxFit.cover,),
          const SizedBox(width: 12),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Programming for beginner", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Alex Chris", style: TextStyle(color: Colors.grey)),
                Row(
                  children: [
                    Icon(Icons.star, size: 14, color: Colors.orange),
                    Text("5  (1,540)"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
