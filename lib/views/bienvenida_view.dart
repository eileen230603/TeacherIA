import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class BienvenidaView extends StatelessWidget {
  const BienvenidaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "IATEACHER",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                "Bienvenido a la aplicación PROFESORAI, donde los educadores son empoderados con herramientas innovadoras para la planificación de lecciones, el monitoreo de estudiantes y el mejoramiento de métodos de enseñanza.",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              const Icon(Icons.school, size: 60, color: Color(0xFF3F51B5)),
              const SizedBox(height: 10),
              const Text(
                "PROFESORAI",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.login);
                },
                child: const Text("Comenzar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}