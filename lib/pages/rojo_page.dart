import 'package:flutter/material.dart';
import 'azul_page.dart';

class RojoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Roja'),
      ),
      body: Container(
        color: Colors.red[100], // Fondo rojo claro
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Esta es la pantalla Roja',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AzulPage()),
                  );
                },
                child: Text('Ir a la pantalla Azul'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Botón redondo
                  ),
                  primary: Colors.red, // Cambio del color a rojo
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
