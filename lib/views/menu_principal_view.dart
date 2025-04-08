import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class MenuPrincipalView extends StatelessWidget {
  const MenuPrincipalView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {"icon": Icons.menu_book, "title": "Planificación de Clases", "route": AppRoutes.planificacion},
      {"icon": Icons.lightbulb, "title": "Sugerencias"},
      {"icon": Icons.monitor_heart, "title": "Monitoreo", "route": AppRoutes.studentMonitor},
      {"icon": Icons.memory, "title": "Clase AI"},
      {"icon": Icons.schedule, "title": "Horario", "route": AppRoutes.horarioEstudiante},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("AITEACHER"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: items.map((item) {
            return GestureDetector(
              onTap: item["route"] != null
                  ? () => Navigator.pushNamed(context, item["route"] as String)
                  : null,
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: item["route"] != null
                      ? () => Navigator.pushNamed(context, item["route"] as String)
                      : null,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          item["icon"] as IconData,
                          size: 40,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          item["title"] as String,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
