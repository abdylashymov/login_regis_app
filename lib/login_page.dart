import 'package:application_login_register/main.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 39, 220, 211),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 39, 220, 211),
        ),
        body: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadiusDirectional.all(
              Radius.elliptical(22, 11),
            ),
            color: const Color.fromARGB(243, 247, 243, 243),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyApp(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.cancel_rounded,
                  size: 30,
                  color: Color.fromARGB(255, 39, 220, 211),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Color.fromARGB(255, 39, 220, 211),
                  foregroundColor: Color.fromARGB(243, 247, 243, 243),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),

                    hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 139, 218, 218),
                      fontWeight: FontWeight.w800,
                    ),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 39, 220, 211),
                      size: 30,
                    ),
                    hintText: 'EMAIL',
                    // fillColor: Color.fromARGB(255, 222, 222, 222),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),

                    // hoverColor: Color.fromARGB(255, 39, 220, 211),
                    // fillColor: Color.fromARGB(255, 39, 220, 211),
                    // iconColor: Color.fromARGB(255, 39, 220, 211),
                    // focusColor: Color.fromARGB(255, 39, 220, 211),
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 139, 218, 218),
                      fontWeight: FontWeight.w800,
                    ),
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 39, 220, 211),
                      size: 30,
                    ),
                    hintText: 'PASSWORD',
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 39, 220, 211),
                    foregroundColor: const Color.fromARGB(243, 247, 243, 243),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    fixedSize: const Size(430, 50),
                  ),
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),
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
