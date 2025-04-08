import 'package:flutter/material.dart';

class HorarioEstudianteView extends StatelessWidget {
  const HorarioEstudianteView({super.key});

  @override
  Widget build(BuildContext context) {
    final horarios = [
      {
        "nombre": "Juan Pérez",
        "avatar": 'assets/avatar_placeholder.png',
        "clases": [
          "Matemáticas: 08:00 - 09:00, Aula 101",
          "Historia: 09:15 - 10:15, Aula 102",
          "Ciencias: 10:30 - 11:30, Aula 103",
        ],
      },
      {
        "nombre": "María López",
        "avatar": 'assets/avatar_placeholder.png',
        "clases": [
          "Inglés: 08:00 - 09:00, Aula 104",
          "Arte: 09:15 - 10:15, Aula 105",
          "Biología: 10:30 - 11:30, Aula 106",
        ],
      },
      {
        "nombre": "Carlos Sánchez",
        "avatar": 'assets/avatar_placeholder.png',
        "clases": [
          "Química: 08:00 - 09:00, Aula 107",
          "Geografía: 09:15 - 10:15, Aula 108",
          "Física: 10:30 - 11:30, Aula 109",
        ],
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Horario de Estudiantes")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Buscar estudiante...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Total de estudiantes: ${horarios.length}",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: horarios.length,
                itemBuilder: (context, index) {
                  final estudiante = horarios[index];
                  return Card(
                    color: Colors.blue[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                estudiante['avatar'].toString(),
                              ),
                            ),
                            title: Text(
                              estudiante['nombre'].toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: const Text("Horario de clases:"),
                          ),
                          const SizedBox(height: 8),
                          ...List.generate(
                            (estudiante['clases'] as List).length,
                            (i) => Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.class_,
                                    size: 16,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(width: 6),
                                  Expanded(
                                    child: Text(
                                      (estudiante['clases'] as List)[i],
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
        tooltip: "Resumen de horarios",
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.group),
      ),
    );
  }
}
