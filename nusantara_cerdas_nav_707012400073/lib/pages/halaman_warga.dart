import 'package:flutter/material.dart';

import '../navigation/app_routes.dart';

class HalamanWarga extends StatelessWidget {
  const HalamanWarga({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 45,
                  child: Icon(Icons.person, size: 45),
                ),
                const SizedBox(height: 16),
                Text(
                  'Identitas Warga',
                  style: Theme.of(context).textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const ListTile(
                  leading: Icon(Icons.person_outline),
                  title: Text('Nama'),
                  subtitle: Text('Muhammad Fikri'),
                ),
                const ListTile(
                  leading: Icon(Icons.badge_outlined),
                  title: Text('Nomor Identitas'),
                  subtitle: Text('707012400073'),
                ),
                const ListTile(
                  leading: Icon(Icons.verified_outlined),
                  title: Text('Status'),
                  subtitle: Text('Warga Terdaftar'),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 20),

        Card(
          child: ListTile(
            leading: const CircleAvatar(child: Icon(Icons.history)),
            title: const Text(
              'Riwayat Laporan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('Lihat laporan yang pernah dibuat.'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.riwayatLaporan);
            },
          ),
        ),
      ],
    );
  }
}
