import 'package:flutter/material.dart';

class PembayaranPembelianPage extends StatefulWidget {
  const PembayaranPembelianPage({super.key});

  @override
  State<PembayaranPembelianPage> createState() =>
      _PembayaranPembelianPageState();
}

class _PembayaranPembelianPageState
    extends State<PembayaranPembelianPage> {

  String aksesBuku = 'online';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pembayaran Pembelian',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Lengkapi data untuk melanjutkan',
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // INFORMASI BUKU
            Row(
              children: [

                Container(
                  width: 70,
                  height: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage(
                        'images/assets/rumahlebah.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(width: 15),

                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rumah Lebah',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text(
                      'Ruwi Meiita',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text(
                      'Dirilis 30 Sep 2019',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 15),

            const Divider(),

            // INFORMASI ANDA
            const Text(
              'Informasi Anda',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Nama Lengkap',
              style: TextStyle(fontSize: 11),
            ),

            const SizedBox(height: 5),

            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Email',
              style: TextStyle(fontSize: 11),
            ),

            const SizedBox(height: 5),

            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Nomor Telepon',
              style: TextStyle(fontSize: 11),
            ),

            const SizedBox(height: 5),

            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Alamat',
              style: TextStyle(fontSize: 11),
            ),

            const SizedBox(height: 5),

            const TextField(
              maxLines: 2,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                isDense: true,
                hintText: 'Masukkan alamat pengiriman',
              ),
            ),

            const SizedBox(height: 15),

            const Divider(),

            // INFORMASI BUKU
            const Text(
              'Informasi Buku',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            pilihanBuku('Judul Buku', 'Rumah Lebah'),

            const SizedBox(height: 8),

            pilihanBuku('Nama Penulis', 'Ruwi Meiita'),

            const SizedBox(height: 8),

            pilihanBuku('Kategori Buku', 'Fiksi'),

            const SizedBox(height: 15),

            const Divider(),

            // AKSES BUKU
            const Text(
              'Akses Buku',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            Row(
              children: [

                Radio<String>(
                  value: 'online',
                  groupValue: aksesBuku,
                  onChanged: (value) {
                    setState(() {
                      aksesBuku = value!;
                    });
                  },
                ),

                const Text(
                  'E-Book',
                  style: TextStyle(fontSize: 13),
                ),

                const SizedBox(width: 20),

                Radio<String>(
                  value: 'offline',
                  groupValue: aksesBuku,
                  onChanged: (value) {
                    setState(() {
                      aksesBuku = value!;
                    });
                  },
                ),

                const Text(
                  'Buku Fisik',
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),

            const SizedBox(height: 10),

            const Divider(),

            // METODE PEMBAYARAN
            const Text(
              'Metode Pembayaran',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Container(
              height: 42,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Row(
                children: [
                  Text(
                    'Pilih Metode Pembayaran',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),

                  Spacer(),

                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 20,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // TOTAL PEMBAYARAN
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [

                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Pembayaran',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        'Rp',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const Spacer(),

                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Center(
                      child: Text(
                        'Lanjut',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget pilihanBuku(String label, String isi) {
    return Row(
      children: [

        SizedBox(
          width: 100,
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 11,
            ),
          ),
        ),

        Expanded(
          child: Container(
            height: 38,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade300,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                Text(
                  isi,
                  style: const TextStyle(
                    fontSize: 11,
                  ),
                ),

                const Spacer(),

                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 18,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}