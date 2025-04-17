import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

DocumentReference? getUserReference(String uid) {
  // get user reference from user ID
  return FirebaseFirestore.instance.collection('users').doc(uid);
}

String? calculatePercentage(
  double? number,
  double? total,
) {
  // necesito obtener un porcentaje a partir de dos números
  // Function to calculate percentage
  String calculatePercentage(double? number, double? total) {
    if (total == null || total == 0 || number == null) {
      return "N/A"; // Para verificar si hay un problema con los datos
    }

    int percentage = ((number / total) * 100).round();
    return "$percentage%";
  }
}

String? createTaskReport(
  String? userName,
  List<String>? tasks,
) {
  // necesito crear un botón que envíe un email a un usuario indicándole el estatus de sus tareas (cada usuario tiene que cumplir una serie de tareas). ¿Cuál es la mejor forma de implementar esto, teniendo en cuenta que tengo configurada una API para enviar emails? Lo que me interesa es saber cómo puedo crear el informe de situación
  if (userName == null || tasks == null || tasks.isEmpty) {
    return null;
  }

  String taskList = '';
  for (int i = 0; i < tasks.length; i++) {
    taskList += '${i + 1}. ${tasks[i]}\n';
  }

  return '''
    Hola $userName,

    Aquí tienes el estado de las condiciones para mantener tu nivel actual:
    
    $taskList

   
    Atentamente,
   
    El equipo de Venta Exterior Nissan
  ''';
}

DateTime? dateWithTime(DateTime? date) {
  if (date == null) return null; // Evitar error si la fecha es nula
  return date.add(Duration(hours: 23, minutes: 59, seconds: 59));
}
