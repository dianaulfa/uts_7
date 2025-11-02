import 'package:flutter/material.dart';

class BerandaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.location_city, color: Colors.white, size: 90),
              SizedBox(height: 20),
              Text(
                "Sistem Analisis Potensi Desa",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 15),
              Text(
                "Aplikasi ini digunakan untuk menganalisis persepsi masyarakat "
                "terhadap potensi dan kondisi desa dengan menggunakan metode "
                "analisis sentimen. Pengguna dapat memasukkan pendapat atau "
                "komentar terkait desa, dan sistem akan menentukan apakah "
                "sentimennya positif, negatif, atau netral.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white70, height: 1.4),
              ),
              SizedBox(height: 12),
              Text(
                "Hasil analisis ini dapat membantu pemerintah desa atau peneliti "
                "dalam memahami pandangan masyarakat dan merumuskan "
                "kebijakan yang lebih tepat.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.white70, height: 1.4),
              ),
              SizedBox(height: 25),
              Text(
                "Gunakan menu di bawah untuk memulai analisis.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.white, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

