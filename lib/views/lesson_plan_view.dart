import 'package:flutter/material.dart';

class LessonPlanView extends StatelessWidget {
  const LessonPlanView({super.key});

  Widget buildSection(BuildContext context, String title, IconData icon, Color color, List<Map<String, String>> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: color),
            const SizedBox(width: 8),
            Text(title, style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
        const Divider(),
        const SizedBox(height: 8),
        ...items.map((item) => Card(
              color: color.withOpacity(0.1),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 2,
              child: ListTile(
                title: Text(item['title']!, style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text("${item['subtitle']}\n${item['description']}", style: const TextStyle(height: 1.5)),
                isThreeLine: true,
                trailing: const Icon(Icons.chevron_right),
                onTap: () {}, // Acción futura
              ),
            )),
        const SizedBox(height: 24),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final newPlans = [
      {"title": "Introducción al Álgebra", "subtitle": "Matemáticas, Grado 8", "description": "Explora los conceptos básicos del álgebra y las ecuaciones."},
      {"title": "Comprendiendo la Fotosíntesis", "subtitle": "Biología, Grado 10", "description": "Un análisis profundo del proceso de la fotosíntesis."},
    ];
    final currentPlans = [
      {"title": "Resumen de la Segunda Guerra Mundial", "subtitle": "Historia, Grado 12", "description": "Un análisis detallado de los eventos de la Segunda Guerra Mundial."},
    ];
    final completedPlans = [
      {"title": "Introducción a Shakespeare", "subtitle": "Literatura, Grado 11", "description": "Un estudio sobre la vida y obras de Shakespeare."},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Planes de Lección")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            buildSection(context, "Nuevos Planes de Lección", Icons.fiber_new, Colors.blue, newPlans),
            buildSection(context, "Planes de Lección Actuales", Icons.loop, Colors.grey, currentPlans),
            buildSection(context, "Planes de Lección Completados", Icons.check_circle, Colors.green, completedPlans),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add),
        tooltip: "Crear nuevo plan",
      ),
    );
  }
}