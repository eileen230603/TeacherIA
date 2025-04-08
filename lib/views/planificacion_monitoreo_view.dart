import 'package:flutter/material.dart';


class PlanificacionMonitoreoView extends StatelessWidget {
  const PlanificacionMonitoreoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AITEACHER")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.menu_book, size: 28),
                        SizedBox(width: 10),
                        Text("Planificación de Lecciones",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                        "Crea y gestiona planes de manera eficiente con herramientas intuitivas."),
                    const SizedBox(height: 10),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: "Buscar Planes",
                        hintText: "Ej: Matemáticas 1°A",
                      ),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/lesson-plan');
                      },
                      icon: const Icon(Icons.add),
                      label: const Text("Nuevo Plan de Lección"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.analytics, size: 28),
                        SizedBox(width: 10),
                        Text("Monitoreo Estudiantil",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                        "Seguimiento de progreso, rendimiento y análisis por estudiante."),
                    const SizedBox(height: 10),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: "Buscar Estudiante",
                        hintText: "Ej: Juan Pérez",
                      ),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/student-monitor');
                      },
                      icon: const Icon(Icons.visibility),
                      label: const Text("Ver Informes"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
