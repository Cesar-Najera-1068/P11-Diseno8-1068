import 'package:flutter/material.dart';

void main() {
  runApp(const MiContainer());
}

class MiContainer extends StatelessWidget {
  const MiContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container con Circulos"),
          centerTitle: true,
          backgroundColor: Colors.teal,
          titleTextStyle: TextStyle(
            color: Colors.white, // Cambia el color del título aquí
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: Column(
          children: [
            // Texto debajo del AppBar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Cesar Najera Mat: 22308051281068",
                style: TextStyle(fontSize: 18),
              ),
            ),
            // Resto del contenido (los círculos)
            Expanded( // Usamos Expanded para que los círculos ocupen el espacio restante
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // Círculo blanco con borde negro
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 3),
                      ),
                    ),
                    // Círculo rojo
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.red,
                      ),
                    ),
                    // Círculo con imagen
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                        image: DecorationImage(
                          image: NetworkImage('https://raw.githubusercontent.com/Cesar-Najera-1068/Central_Camionera_imagenes_appflutter/refs/heads/main/camion1.jpg'), // Reemplaza con la URL de tu imagen
                          fit: BoxFit.cover,
                        ),
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
  }
}