import 'package:flutter/material.dart';

class HasilPage extends StatelessWidget {
  final String desa;
  final double nilai;
  final String sentimen;

  const HasilPage({
    this.desa = "Desa Sukamaju",
  
   
    this.nilai = 0.72,
    this.sentimen = "Positif",
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil Analisis"),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              desa,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            Text(
              "Sentimen: $sentimen",
              style: TextStyle(fontSize: 20),
            ),

            Text(
              "Skor Sentimen: $nilai",
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 30),

            Icon(
              Icons.pie_chart,
              size: 100,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
