import 'package:flutter/material.dart';

class StudentMonitorView extends StatelessWidget {
  const StudentMonitorView({super.key});

  @override
  Widget build(BuildContext context) {
    final students = [
      {"name": "Emily Johnson", "activity": "85%", "value": 0.85},
      {"name": "Michael Lee", "activity": "78%", "value": 0.78},
      {"name": "Sophia Martinez", "activity": "92%", "value": 0.92},
      {"name": "Lucas Gómez", "activity": "58%", "value": 0.58},
    ];

    double averageActivity = students.map((s) => s['value'] as double).reduce((a, b) => a + b) / students.length;

    return Scaffold(
      appBar: AppBar(title: const Text("Monitoreo de Estudiantes")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Estudiantes monitoreados: ${students.length} — Actividad media: ${(averageActivity * 100).round()}%",
              style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: "Buscar estudiantes",
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Buscar"),
                )
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  final student = students[index];
                  final double value = student['value'] as double;
                  final Color barColor = value >= 0.8
                      ? Colors.green
                      : value >= 0.6
                          ? Colors.orange
                          : Colors.red;

                  return Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: AssetImage('assets/avatar_placeholder.png'),
                            ),
                            title: Text(student['name'].toString()),
                            subtitle: Text("Actividad reciente: ${student['activity'].toString()}"),
                            trailing: TextButton(
                              onPressed: () {},
                              child: const Text("Detalles"),
                            ),
                          ),
                          const SizedBox(height: 8),
                          LinearProgressIndicator(
                            value: value,
                            color: barColor,
                            backgroundColor: Colors.grey[300],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Agregar estudiante",
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.person_add),
      ),
    );
  }
}
