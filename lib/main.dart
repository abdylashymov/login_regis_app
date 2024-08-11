import 'package:application_login_register/login_page.dart';
import 'package:application_login_register/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Kirishuu(),
    );
  }
}

class Kirishuu extends StatelessWidget {
  const Kirishuu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 39, 220, 211),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 39, 220, 211),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 39, 220, 211),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(300),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 80),
            ),
            const CircleAvatar(
              radius: 60,
              backgroundColor: Color.fromARGB(243, 247, 243, 243),
              child: Text(
                'GO',
                style: TextStyle(
                  fontSize: 78,
                  color: Color.fromARGB(255, 39, 220, 211),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 140,
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Color.fromARGB(243, 247, 243, 243),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 50,
              ),
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Color.fromARGB(243, 247, 243, 243),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Login(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(243, 247, 243, 243),
                  foregroundColor: const Color.fromARGB(255, 39, 220, 211),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  fixedSize: const Size(120, 50),
                ),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Register(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(243, 247, 243, 243),
                  foregroundColor: const Color.fromARGB(255, 39, 220, 211),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  fixedSize: const Size(120, 50),
                ),
                child: const Text(
                  'REGISTER',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
