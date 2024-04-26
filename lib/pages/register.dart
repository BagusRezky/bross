import 'package:bross/pages/home.dart';
import 'package:bross/pages/login.dart';
import 'package:bross/styles/color_style.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool obscureText1 = true;
  bool obscureText2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.background,
      appBar: AppBar(
        backgroundColor: ColorStyle.primary,
        title: Image.asset("assets/logoremove.png", height: 100, width: 90),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: ColorStyle.black),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Login(),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/amico.png", height: 200, width: 180),
              const SizedBox(height: 10),
              const Text(
                "Register",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 40,
                width: 310,
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorStyle.black,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Full Name",
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 40,
                width: 310,
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorStyle.black,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 40,
                width: 310,
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorStyle.black,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  obscureText: obscureText1,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(
                        obscureText1 ? Icons.visibility_off : Icons.visibility,
                        color: obscureText1 ? Colors.grey : Colors.blue,
                      ),
                      onPressed: () {
                        setState(() {
                          obscureText1 = !obscureText1;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 40,
                width: 310,
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorStyle.black,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  obscureText: obscureText2,
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(
                        obscureText2 ? Icons.visibility_off : Icons.visibility,
                        color: obscureText2 ? Colors.grey : Colors.blue,
                      ),
                      onPressed: () {
                        setState(() {
                          obscureText2 = !obscureText2;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorStyle.primary,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                ),
                child: const Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 18,
                    color: ColorStyle.secondary,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: ColorStyle.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
