import 'package:flutter/material.dart';
import 'hasil_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController desaC = TextEditingController();
  TextEditingController opiniC = TextEditingController();

  @override
  void dispose() {
    desaC.dispose();
    opiniC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Opini"),
        backgroundColor: Colors.green,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: desaC,
              decoration: InputDecoration(labelText: "Nama Desa"),
            ),
            TextField(
              controller: opiniC,
              decoration: InputDecoration(labelText: "Ketikan opini masyarakat"),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                String opini = opiniC.text.toLowerCase();

                List<String> positifKata = [
                  "maju", "bagus", "baik", "berkembang",
                  "potensial", "unggul", "positif"
                ];

                List<String> negatifKata = [
                  "jelek", "buruk", "tertinggal", "miskin",
                  "tidak maju", "parah", "negatif"
                ];

                int scorePositif = 0;
                int scoreNegatif = 0;

                for (var kata in positifKata) {
                  if (opini.contains(kata)) scorePositif++;
                }
                for (var kata in negatifKata) {
                  if (opini.contains(kata)) scoreNegatif++;
                }

                String sentimen = "Netral";
                double nilai = 0.5;

                if (scorePositif > scoreNegatif) {
                  sentimen = "Positif";
                  nilai = 0.7;
                } else if (scoreNegatif > scorePositif) {
                  sentimen = "Negatif";
                  nilai = 0.3;
                }

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HasilPage(
                      desa: desaC.text,
                      nilai: nilai,
                      sentimen: sentimen,
                    ),
                  ),
                );
              },
              child: Text("Analisis Sentimen"),
            ),
          ],
        ),
      ),
    );
  }
}
