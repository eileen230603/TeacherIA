import 'package:flutter/material.dart';

class ProyeccionesView extends StatelessWidget {
  const ProyeccionesView({super.key});

  @override
  Widget build(BuildContext context) {
    final projections = [
      {"title": "Proyecto de Ciencias", "description": "Explora los ecosistemas y su biodiversidad.", "subject": "Ciencias Naturales", "time": "2 semanas"},
      {"title": "Ensayo de Literatura", "description": "Analiza las obras de Gabriel García Márquez.", "subject": "Literatura", "time": "1 semana"},
      {"title": "Problemas de Álgebra", "description": "Resuelve ecuaciones cuadráticas.", "subject": "Matemáticas", "time": "3 días"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Proyecciones de Asignaciones")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: projections.length,
          itemBuilder: (context, index) {
            final item = projections[index];
            return Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item['title']!, style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(item['description']!),
                    const SizedBox(height: 6),
                    Text("Materia: ${item['subject']!}"),
                    Text("Tiempo estimado: ${item['time']!}"),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
