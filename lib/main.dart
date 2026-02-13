import 'package:flutter/material.dart';

void main() {
  runApp(const GuarderiaApp());
}

class GuarderiaApp extends StatelessWidget {
  const GuarderiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Mascotas(),
    );
  }
}

class Mascotas extends StatelessWidget {
  const Mascotas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Fondo suave para que resalten los cuadros
            appBar: AppBar(
        title: const Text(
          'Guardería Canina',
          style: TextStyle(color: Colors.white),
          
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[700], // Azul fuerte
        elevation: 4,
        leading: const Icon(Icons.pets, color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.room_service),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.pets),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.receipt_long),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // Fila 1: Servicios Principales
              Expanded(
                child: Row(
                  children: [
                    _crearServicio("Hospedaje", Icons.hotel, Colors.blue[800]!),
                    _crearServicio("Entrenamiento", Icons.psychology, Colors.blue[400]!),
                  ],
                ),
              ),
              // Fila 2: Cuidado Personal
              Expanded(
                child: Row(
                  children: [
                    _crearServicio("Baño y Spa", Icons.bathtub, Colors.lightBlue[300]!),
                    _crearServicio("Paseos", Icons.directions_run, Colors.blue[600]!),
                  ],
                ),
              ),
              // Fila 3: Seguridad y Salud
              Expanded(
                child: Row(
                  children: [
                    _crearServicio("Veterinaria", Icons.local_hospital, Colors.white, esTextoOscuro: true),
                    _crearServicio("Cámaras 24/7", Icons.videocam, Colors.blue[900]!),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget optimizado para mostrar servicios con Iconos
  Widget _crearServicio(String titulo, IconData icono, Color colorFondo, {bool esTextoOscuro = false}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: colorFondo,
          borderRadius: BorderRadius.circular(25.0), // Bordes más suaves
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
          border: esTextoOscuro ? Border.all(color: Colors.blue.shade100, width: 2) : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icono,
              size: 40,
              color: esTextoOscuro ? Colors.blue[800] : Colors.white,
            ),
            const SizedBox(height: 12),
            Text(
              titulo,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: esTextoOscuro ? Colors.blue[800] : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}