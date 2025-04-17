// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'package:firebase_auth/firebase_auth.dart';

Future<String> updateUserEmailSimple(String newEmail) async {
  try {
    // Validar formato de email
    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(newEmail);

    if (!emailValid) {
      return 'El formato del email no es válido';
    }

    // Obtener usuario actual
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return 'No hay usuario conectado';
    }

    // Verificar email antes de actualizar
    await user.verifyBeforeUpdateEmail(newEmail);
    return 'Se ha enviado un email de verificación. Por favor, verifica tu nuevo email';
  } catch (e) {
    if (e is FirebaseAuthException) {
      switch (e.code) {
        case 'requires-recent-login':
          return 'Necesitas volver a iniciar sesión para cambiar tu email';
        case 'invalid-email':
          return 'El email no es válido';
        case 'email-already-in-use':
          return 'Este email ya está en uso';
        default:
          return 'Error: ${e.message}';
      }
    }
    return 'Error al actualizar email';
  }
}
