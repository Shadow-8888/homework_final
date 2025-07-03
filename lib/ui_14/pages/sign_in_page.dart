import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_14/pages/forgot_password_page.dart';
import 'package:modul4_jabborov/ui_14/pages/home_page.dart';
import 'package:modul4_jabborov/ui_14/pages/sign_up_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back, size: 28)
              ),
              const SizedBox(height: 32),
              const Center(
                child: Text(
                  'Sign in now',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Center(
                child: Text(
                  'Please sign in to continue our app',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  hintText: 'www.uihut@gmail.com',
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '**********',
                  filled: true,
                  fillColor: Colors.grey[100],
                  suffixIcon: const Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c) => const ForgotPasswordPage()));
                  },
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(13, 110, 253, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? ", style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(112, 123, 129, 1)
                  ),),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (c) => const SignUpPage()));
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(color: Color.fromRGBO(13, 110, 253, 1)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Center(child: Text('Or connect', style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(112, 123, 129, 1)
              ),)),
              const SizedBox(height: 100),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook, color: Colors.blue, size: 40),
                  SizedBox(width: 16),
                  Icon(Icons.facebook, color: Colors.blue, size: 40),
                  SizedBox(width: 16),
                  Icon(Icons.facebook, color: Colors.blue, size: 40),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  
}
