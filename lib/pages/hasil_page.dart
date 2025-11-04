import 'package:flutter/material.dart';

class HasilPage extends StatelessWidget {
  final String desa;
  final double nilai;
  final String sentimen;

  const HasilPage({
    Key? key,
    required this.desa,
    required this.nilai,
    required this.sentimen,
  }) : super(key: key);

  // Fungsi untuk memberikan keterangan tambahan
  String getKeterangan(String sentimen) {
    if (sentimen == "Positif") {
      return "Desa ini memiliki potensi baik dan pandangan masyarakat yang optimis.";
    } else if (sentimen == "Negatif") {
      return "Desa ini perlu perhatian lebih karena opini masyarakat cenderung pesimis.";
    } else {
      return "Opini masyarakat terhadap desa ini bersifat netral.";
    }
  }

  @override
  Widget build(BuildContext context) {
    // Warna indikator berdasarkan hasil
    Color warna = sentimen == "Positif"
        ? Colors.green
        : sentimen == "Negatif"
            ? Colors.red
            : Colors.grey;

    // Ikon sentimen
    IconData ikon = sentimen == "Positif"
        ? Icons.sentiment_satisfied_alt
        : sentimen == "Negatif"
            ? Icons.sentiment_dissatisfied
            : Icons.sentiment_neutral;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hasil Analisis"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Judul Desa
                Text(
                  desa.isEmpty ? "Nama Desa Tidak Diketahui" : desa,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                // Card hasil analisis
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Icon(
                          ikon,
                          size: 100,
                          color: warna,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Sentimen: $sentimen",
                          style: TextStyle(
                            fontSize: 22,
                            color: warna,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Skor Sentimen: ${nilai.toStringAsFixed(2)}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 20),

                        // Progress bar
                        LinearProgressIndicator(
                          value: nilai,
                          color: warna,
                          backgroundColor: Colors.grey[300],
                          minHeight: 10,
                        ),
                        const SizedBox(height: 20),

                        // Keterangan hasil
                        Text(
                          getKeterangan(sentimen),
                          style: const TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // Tombol kembali / analisis ulang
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text("Analisis Ulang"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 12,
                    ),
                    textStyle: const TextStyle(fontSize: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
