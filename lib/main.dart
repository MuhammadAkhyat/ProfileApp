import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Saya',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Saya"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/profile.jpeg"),
            ),
            const SizedBox(height: 16),


            const Text(
              "Muhammad Akhyat Tariq Razan",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Mahasiswa Informatika | Universitas Mulawarman",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 12),

            const Text(
              "Saya adalah mahasiswa Informatika yang suka belajar  dan perkembangan teknologi. "
              "Hobi saya adalah Main Game, Nonton Film, dan eksplorasi teknologi baru.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 24),

            const Text(
              "Biodata Diri",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(thickness: 1),

            Card(
              child: ListTile(
                leading: const Icon(Icons.cake, color: Colors.pink),
                title: const Text("Tanggal Lahir"),
                subtitle: const Text("08 Maret 2005"),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.school, color: Colors.indigo),
                title: const Text("Fakultas"),
                subtitle: const Text("Fakultas Teknik"),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.computer, color: Colors.teal),
                title: const Text("Jurusan"),
                subtitle: const Text("Informatika"),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.star, color: Colors.orange),
                title: const Text("Hobi"),
                subtitle: const Text("Futsal, Bermain Game"),
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              "Kontak",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(thickness: 1),

            Card(
              child: ListTile(
                leading: const Icon(Icons.email, color: Colors.blue),
                title: const Text("Email"),
                subtitle: const Text("akhyattariq@gmail.com"),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.phone, color: Colors.green),
                title: const Text("Telepon"),
                subtitle: const Text("+62 895 6061 30914"),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.location_on, color: Colors.red),
                title: const Text("Alamat"),
                subtitle: const Text("Jl. Pramuka 5A No. 11, Samarinda"),
              ),
            ),

            const SizedBox(height: 24),

            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Terima kasih sudah mengunjungi profil saya!")),
                );
              },
              icon: const Icon(Icons.person),
              label: const Text("Hubungi Saya"),
            ),
          ],
        ),
      ),
    );
  }
}
