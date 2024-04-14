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

DateTime? verificarDia(DateTime? dia) {
  // Asegurarse de que 'dia' no es null.
  if (dia == null) return null;

  // Obtener la fecha actual.
  DateTime now = DateTime.now();
  // Crear un nuevo DateTime solo con la fecha de 'dia' (sin la hora).
  DateTime fechaDia = DateTime(dia.year, dia.month, dia.day);
  // Crear un DateTime para la fecha actual sin la hora.
  DateTime fechaHoy = DateTime(now.year, now.month, now.day);

  // Comprobar si las fechas son iguales.
  if (fechaDia == fechaHoy) {
    // Si son iguales, retornar 'dia'.
    return dia;
  } else {
    // Si no son iguales, significa que 'dia' no es hoy y se retorna null.
    return null;
  }
}
