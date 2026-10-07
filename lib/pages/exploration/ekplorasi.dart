import 'package:flutter/material.dart';

class EksplorasiPage extends StatefulWidget {
  const EksplorasiPage({super.key});

  @override
  State<EksplorasiPage> createState() => _EksplorasiPageState();
}

class _EksplorasiPageState extends State<EksplorasiPage> {
  // Untuk mengetik pada search bar
  final TextEditingController searchController =
  TextEditingController();

  // Untuk mengetahui apakah search bar sedang aktif
  bool searchAktif = false;

  final List<Map<String, String>> daftarBuku = [
    {
      'judul': 'Bumi',
      'penulis': 'Tere Liye',
      'kategori': 'Fiksi',
      'gambar': 'images/assets/Bumi.jpg',
    },
    {
      'judul': 'Laskar Pelangi',
      'penulis': 'Andrea Hirata',
      'kategori': 'Fiksi',
      'gambar': 'images/assets/LaskarPelangi.jpg',
    },
    {
      'judul': 'Negeri 5 Menara',
      'penulis': 'Ahmad Fuadi',
      'kategori': 'Fiksi',
      'gambar': 'images/assets/Negeri5Menara.jpg',
    },
    {
      'judul': 'Atomic Habits',
      'penulis': 'James Clear',
      'kategori': 'Pengembangan Diri',
      'gambar': 'images/assets/AtomicHabits.jpg',
    },
    {
      'judul': 'The Psychology of Money',
      'penulis': 'Morgan Housel',
      'kategori': 'Keuangan',
      'gambar': 'images/assets/Psychology.jpg',
    },
    {
      'judul': 'Injustice 2',
      'penulis': 'Tom Taylor',
      'kategori': 'Komik',
      'gambar': 'images/assets/Injustice2.jpg',
    },
  ];

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  // Mengaktifkan mode pencarian
  void mulaiSearch() {
    setState(() {
      searchAktif = true;
    });
  }

  // Keluar dari mode pencarian
  void tutupSearch() {
    setState(() {
      searchAktif = false;
      searchController.clear();
    });
  }

  // Mendapatkan hasil pencarian
  List<Map<String, String>> hasilPencarian() {
    String keyword = searchController.text.toLowerCase();

    if (keyword.isEmpty) {
      return [];
    }

    return daftarBuku.where((buku) {
      String judul = buku['judul']!.toLowerCase();
      String penulis = buku['penulis']!.toLowerCase();
      String kategori = buku['kategori']!.toLowerCase();

      return judul.contains(keyword) ||
          penulis.contains(keyword) ||
          kategori.contains(keyword);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [

            // BAGIAN ATAS
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Row(
                children: [

                  // Tombol back
                  GestureDetector(
                    onTap: () {
                      if (searchAktif) {
                        tutupSearch();
                      } else {
                        Navigator.pop(context);
                      }
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 25,
                    ),
                  ),

                  const SizedBox(width: 12),

                  // SEARCH BAR
                  Expanded(
                    child: GestureDetector(
                      onTap: mulaiSearch,
                      child: Container(
                        height: 48,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffF1F1F1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [

                            const Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 23,
                            ),

                            const SizedBox(width: 10),

                            Expanded(
                              child: TextField(
                                controller: searchController,
                                autofocus: searchAktif,
                                enabled: searchAktif,
                                onChanged: (value) {
                                  setState(() {});
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Cari buku...',
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                              ),
                            ),

                            // Tombol X
                            if (searchAktif &&
                                searchController.text.isNotEmpty)
                              GestureDetector(
                                onTap: () {
                                  searchController.clear();
                                  setState(() {});
                                },
                                child: const Icon(
                                  Icons.close,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // ISI HALAMAN
            Expanded(
              child: searchAktif
                  ? tampilanSearch()
                  : tampilanEksplorasi(),
            ),
          ],
        ),
      ),

      // BOTTOM NAVIGATION
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,

        onTap: (index) {
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Eksplorasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'Koleksi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profil',
          ),
        ],
      ),
    );
  }

  // TAMPILAN UTAMA EKSPLORASI
  Widget tampilanEksplorasi() {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox(height: 10),

          // Judul
          const Text(
            'Mungkin Anda Suka',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          // DAFTAR REKOMENDASI
          SizedBox(
            height: 285,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: daftarBuku.length,
              itemBuilder: (context, index) {
                return kartuBuku(daftarBuku[index]);
              },
            ),
          ),

          const SizedBox(height: 30),

          // KATEGORI
          const Text(
            'Kategori',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              kategoriButton('Fiksi'),
              kategoriButton('Komik'),
              kategoriButton('Romansa'),
              kategoriButton('Pengembangan Diri'),
              kategoriButton('Keuangan'),
            ],
          ),

          const SizedBox(height: 30),

          // BUKU PILIHAN
          const Text(
            'Buku Pilihan',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          ...daftarBuku.take(3).map(
                (buku) => bukuListTile(buku),
          ),
        ],
      ),
    );
  }

  // TAMPILAN SAAT SEARCH AKTIF
  Widget tampilanSearch() {
    String keyword = searchController.text;

    // Kalau belum mengetik apa-apa
    if (keyword.isEmpty) {
      return SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              'Pencarian Populer',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            pencarianPopuler('Tere Liye'),
            pencarianPopuler('Fiksi'),
            pencarianPopuler('Tom Taylor'),
            pencarianPopuler('Romansa'),

            const SizedBox(height: 30),

            const Text(
              'Mungkin Anda Suka',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            ...daftarBuku.take(3).map(
                  (buku) => bukuListTile(buku),
            ),
          ],
        ),
      );
    }

    // Kalau sudah mengetik
    List<Map<String, String>> hasil = hasilPencarian();

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            'Hasil pencarian untuk "$keyword"',
            style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          if (hasil.isEmpty)
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Icon(
                      Icons.search_off,
                      size: 60,
                      color: Colors.grey,
                    ),

                    SizedBox(height: 15),

                    Text(
                      'Buku tidak ditemukan',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          if (hasil.isNotEmpty)
            ...hasil.map(
                  (buku) => bukuListTile(buku),
            ),
        ],
      ),
    );
  }

  // KARTU BUKU
  Widget kartuBuku(Map<String, String> buku) {
    return Container(
      width: 155,
      margin: const EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // FOTO COVER BUKU
          Container(
            width: 155,
            height: 205,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(buku['gambar']!),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 10),

          // JUDUL
          Text(
            buku['judul']!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 4),

          // PENULIS
          Text(
            buku['penulis']!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 5),

          // KATEGORI
          Text(
            buku['kategori']!,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  // SEARCH POPULER
  Widget pencarianPopuler(String teks) {
    return GestureDetector(
      onTap: () {
        searchController.text = teks;

        setState(() {});
      },

      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        child: Row(
          children: [

            const Icon(
              Icons.search,
              color: Colors.grey,
            ),

            const SizedBox(width: 15),

            Text(
              teks,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // LIST BUKU
  Widget bukuListTile(Map<String, String> buku) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [

          // COVER BUKU
          Container(
            width: 100,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(buku['gambar']!),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(width: 15),

          // INFORMASI BUKU
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  buku['judul']!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  buku['penulis']!,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  buku['kategori']!,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // BUTTON KATEGORI
  Widget kategoriButton(String nama) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffF1F1F1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        nama,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}