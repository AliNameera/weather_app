import 'package:flutter/material.dart';
import 'package:weather_app/home_screen.dart';
class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 26, 181, 243),
              Color.fromARGB(255, 198, 230, 255),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/logo/logo.png',
                      width: 83,
                      height: 83,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Group Members Name:',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, fontFamily: "KaushanScript"),
              ),
              const SizedBox(height: 20),
              const Text(
                'Nameera Ali',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, fontFamily: "KaushanScript"),
              ),
              const SizedBox(height: 5),
              const Text(
                'Khoula',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, fontFamily: "KaushanScript"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

