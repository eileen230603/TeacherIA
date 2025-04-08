import 'package:flutter/material.dart';
import '../views/bienvenida_view.dart';
import '../views/login_view.dart';
import '../views/menu_principal_view.dart';
import '../views/planificacion_monitoreo_view.dart';
import '../views/lesson_plan_view.dart';
import '../views/student_monitor_view.dart';
import '../views/proyecciones_view.dart';
import '../views/horario_estudiante_view.dart';

class AppRoutes {
  static const String bienvenida = '/';
  static const String login = '/login';
  static const String menu = '/menu';
  static const String planificacion = '/planificacion';
  static const String lessonPlan = '/lesson-plan';
  static const String studentMonitor = '/student-monitor';
  static const String proyecciones = '/proyecciones';
  static const String horarioEstudiante = '/horario-estudiante';

  static Map<String, WidgetBuilder> routes = {
    bienvenida: (_) => const BienvenidaView(),
    login: (_) => const LoginView(),
    menu: (_) => const MenuPrincipalView(),
    planificacion: (_) => const PlanificacionMonitoreoView(),
    lessonPlan: (_) => const LessonPlanView(),
    studentMonitor: (_) => const StudentMonitorView(),
    proyecciones: (_) => const ProyeccionesView(),
    horarioEstudiante: (_) => const HorarioEstudianteView(),
  };
}