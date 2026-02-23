import 'package:flutter/material.dart';
import '../models/mobil.dart';
import 'form_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Mobil> daftarMobil = [];

  void hapusMobil(String id) {
    setState(() {
      daftarMobil.removeWhere((mobil) => mobil.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daffa Wijaya Motor',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 13, 32, 85),
      ),
      body: daftarMobil.isEmpty
          ? const Center(
              child: Text(
                'Belum ada data mobil. Silakan tambah data!',
                style: TextStyle(fontSize: 16),
              ),
            )
          : ListView.builder(
              itemCount: daftarMobil.length,
              itemBuilder: (context, index) {
                final mobil = daftarMobil[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  child: ListTile(
                    title: Text(
                      '${mobil.merk} ${mobil.model}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Tahun: ${mobil.tahun} | Harga: Rp ${mobil.harga}',
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // edit
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.orange),
                          onPressed: () async {
                            final hasil = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    FormPage(mobilEdit: mobil),
                              ),
                            );

                            if (hasil != null && hasil is Mobil) {
                              setState(() {
                                int indexEdit = daftarMobil.indexWhere(
                                  (m) => m.id == hasil.id,
                                );
                                if (indexEdit != -1) {
                                  daftarMobil[indexEdit] = hasil;
                                }
                              });
                            }
                          },
                        ),

                        // hapus
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('Hapus Data'),
                                content: Text(
                                  'Yakin mau hapus data mobil ${mobil.merk} ${mobil.model}?',
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text('Batal'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      hapusMobil(mobil.id);
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Hapus',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final hasil = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FormPage()),
          );

          if (hasil != null && hasil is Mobil) {
            setState(() {
              daftarMobil.add(hasil);
            });
          }
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
