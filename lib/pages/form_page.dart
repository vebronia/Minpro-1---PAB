import 'package:flutter/material.dart';
import '../models/mobil.dart';

class FormPage extends StatefulWidget {
  final Mobil? mobilEdit;

  const FormPage({super.key, this.mobilEdit});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController merkController = TextEditingController();
  final TextEditingController modelController = TextEditingController();
  final TextEditingController tahunController = TextEditingController();
  final TextEditingController hargaController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.mobilEdit != null) {
      merkController.text = widget.mobilEdit!.merk;
      modelController.text = widget.mobilEdit!.model;
      tahunController.text = widget.mobilEdit!.tahun;
      hargaController.text = widget.mobilEdit!.harga;
    }
  }

  @override
  void dispose() {
    merkController.dispose();
    modelController.dispose();
    tahunController.dispose();
    hargaController.dispose();
    super.dispose();
  }

  void _simpanData() {
    if (merkController.text.trim().isEmpty ||
        modelController.text.trim().isEmpty ||
        tahunController.text.trim().isEmpty ||
        hargaController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Tolong isi semua bidangnya ya!')),
      );
      return;
    }

    Mobil mobilBaru = Mobil(
      id: widget.mobilEdit != null
          ? widget.mobilEdit!.id
          : DateTime.now().millisecondsSinceEpoch.toString(),
      merk: merkController.text,
      model: modelController.text,
      tahun: tahunController.text,
      harga: hargaController.text,
    );

    Navigator.pop(context, mobilBaru);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.mobilEdit != null ? 'Edit Data Mobil' : 'Tambah Mobil Baru',
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: merkController,
              decoration: const InputDecoration(
                labelText: 'Merk Mobil (Contoh: Honda)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),

            TextField(
              controller: modelController,
              decoration: const InputDecoration(
                labelText: 'Model (Contoh: Brio)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),

            TextField(
              controller: tahunController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Tahun (Contoh: 2021)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),

            TextField(
              controller: hargaController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Harga (Contoh: 150000000)',
                border: OutlineInputBorder(),
                prefixText: 'Rp ',
              ),
            ),
            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _simpanData,
                child: const Text(
                  'Simpan Data',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
