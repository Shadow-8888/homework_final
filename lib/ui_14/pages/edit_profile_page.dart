import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Edit Profile", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios_new, color: Colors.black)
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(child: Text("Done", style: TextStyle(color: Colors.blue))),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          children: [
            Column(
              children: [
                Image.asset("images/ui_14_avatar.png"),
                const SizedBox(height: 12),
                const Text("Leonardo", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: () {},
                  child: const Text("Change Profile Picture", style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            const SizedBox(height: 24),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text("First Name", style: TextStyle(fontWeight: FontWeight.w500)),
            ),
            const SizedBox(height: 6),
            const CustomInputField(initialValue: "Leonardo"),

            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Last Name", style: TextStyle(fontWeight: FontWeight.w500)),
            ),
            const SizedBox(height: 6),
            const CustomInputField(initialValue: "Ahmed"),

            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Location", style: TextStyle(fontWeight: FontWeight.w500)),
            ),
            const SizedBox(height: 6),
            const CustomInputField(initialValue: "Sylhet Bangladesh"),

            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Mobile Number", style: TextStyle(fontWeight: FontWeight.w500)),
            ),
            const SizedBox(height: 6),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: DropdownButton<String>(
                        value: "+88",
                        items: const [
                          DropdownMenuItem(value: "+88", child: Text("+88")),
                          DropdownMenuItem(value: "+91", child: Text("+91")),
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: "01758-000666",
                      decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.check, color: Colors.blue),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomInputField extends StatelessWidget {
  final String initialValue;
  const CustomInputField({super.key, required this.initialValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextFormField(
        initialValue: initialValue,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          suffixIcon: Icon(Icons.check, color: Colors.blue),
        ),
      ),
    );
  }
}
