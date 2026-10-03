import 'package:flutter/material.dart';

class HalamanDetailLayanan extends StatelessWidget {
  const HalamanDetailLayanan({
    super.key,
    required this.nama,
    required this.dinas,
    required this.jam,
    required this.keterangan,
  });

  final String nama;
  final String dinas;
  final String jam;
  final String keterangan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Layanan')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.miscellaneous_services, size: 60),

                  const SizedBox(height: 20),

                  Text(
                    nama,
                    style: Theme.of(context).textTheme.headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 24),

                  const Text(
                    'Dinas Penanggung Jawab',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 6),

                  Text(dinas),

                  const SizedBox(height: 20),

                  const Text(
                    'Jam Operasional',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 6),

                  Text(jam),

                  const SizedBox(height: 20),

                  const Text(
                    'Keterangan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 6),

                  Text(keterangan),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          FilledButton.icon(
            onPressed: () {
              Navigator.pop(context, 'Permohonan $nama telah diajukan.');
            },
            icon: const Icon(Icons.send),
            label: const Text('Ajukan Permohonan'),
          ),

          const SizedBox(height: 10),

          OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Kembali'),
          ),
        ],
      ),
    );
  }
}
