import 'package:flutter/material.dart';

Chip customChip(String name) {
  return Chip(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      label: Text(name));
}

Chip customChipB(String name, Color? color) {
  return Chip(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      backgroundColor: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      label: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ));
}
