import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedMenu = 0;
  final List<Map<String, String>> kategori = [
    {
      'nama': 'Fiksi',
      'gambar': 'images/assets/book_cat.png',
    },
    {
      'nama': 'Non-Fiksi',
      'gambar': 'images/assets/leather_cat.png',
    },
    {
      'nama': 'Bisnis',
      'gambar': 'images/assets/business_cat.png',
    },
    {
      'nama': 'Teknologi',
      'gambar': 'images/assets/tech_cat.png',
    },
    {
      'nama': 'Pendidikan',
      'gambar': 'images/assets/pendidikan_cat.png',
    },
  ];

  final List<Map<String, String>> bukuPopuler = [
    {
      'judul': 'Rumah Lebah',
      'penulis': 'Ruwi Meita',
      'gambar': 'images/assets/rumahlebah.jpg',
    },
    {
      'judul': 'Atomic Habits',
      'penulis': 'James Clear',
      'gambar': 'images/assets/atomichabits.jpg',
    },
    {
      'judul': 'Connect Group',
      'penulis': 'GMS Church',
      'gambar': 'images/assets/guardians.webp',
    },
    {
      'judul': 'Twelve Months',
      'penulis': 'Jim Butcher',
      'gambar': 'images/assets/twelvemonths.jpg',
    },
  ];

  final List<Map<String, String>> rekomendasi = [
    {
      'judul': 'Forensic Psychology',
      'penulis': 'Connor Whiteley',
      'gambar': 'images/assets/forensicpsychology.jpeg',
    },
    {
      'judul': 'Time Management',
      'penulis': 'Connor Whiteley',
      'gambar': 'images/assets/timemanagement.webp',
    },
    {
      'judul': 'Kapan Jatuh Cinta',
      'penulis': 'Hanif Mahaldi',
      'gambar': 'images/assets/kapanjatuhcinta.jpeg',
    },
    {
      'judul': 'Kurir Jiwa',
      'penulis': 'Hanif Mahaldi',
      'gambar': 'images/assets/kebeletkaya.jpeg',
    },
  ];

  final List<Map<String, String>> bisnis = [
    {
      'judul': '108 Tanya Jawab',
      'penulis': 'Joko Salim, S.Kom.',
      'gambar': 'images/assets/108jawaban.jpeg',
    },
    {
      'judul': 'Kebelet Kaya',
      'penulis': 'Mardigu WP',
      'gambar': 'images/assets/kebeletkaya.jpeg',
    },
    {
      'judul': 'Kapan Jatuh Cinta',
      'penulis': 'Hanif Mahaldi',
      'gambar': 'images/assets/kapanjatuhcinta.jpeg',
    },
    {
      'judul': 'Jangan Belanja',
      'penulis': 'Benny Lo',
      'gambar': 'images/assets/atomichabits.jpg',
    },
  ];

  final List<Map<String, String>> sastra = [
    {
      'judul': 'Pulang',
      'penulis': 'Tere Liye',
      'gambar': 'images/assets/pulang.jpeg',
    },
    {
      'judul': 'Negeri Para Bedebah',
      'penulis': 'Tere Liye',
      'gambar': 'images/assets/negeriparabedebah.jpg',
    },
    {
      'judul': 'It Takes Two',
      'penulis': 'Niken Darcy',
      'gambar': 'images/assets/guardians.webp',
    },
    {
      'judul': 'The Wedding',
      'penulis': 'Faitna YA',
      'gambar': 'images/assets/twelvemonths.jpg',
    },
  ];

  final List<Map<String, String>> sepertiInjustice = [
    {
      'judul': 'Injustice: Gods',
      'penulis': 'Brian Buccellato',
      'gambar': 'images/assets/injustice.jpeg',
    },
    {
      'judul': 'Nightwing Vol.',
      'penulis': 'Tom Taylor',
      'gambar': 'images/assets/nightwing.jpg',
    },
    {
      'judul': 'DCeased',
      'penulis': 'Tom Taylor',
      'gambar': 'images/assets/injustice2.jpg',
    },
    {
      'judul': 'Guardians',
      'penulis': 'Brian Michael',
      'gambar': 'images/assets/guardians.webp',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 110),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  //Logo dan Notif
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/assets/logo.png',
                          width: 48,
                          height: 48,
                        ),

                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Libra',
                              style: TextStyle(
                                fontSize: 29,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0d004e),
                                height: 0.9,
                              ),
                            ),
                            const Text(
                              'mobile',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff005eff),
                                letterSpacing: 3,
                              ),
                            ),
                          ],
                        ),

                        const Spacer(),
                        Image.asset(
                          'images/assets/Lonceng.png',
                          width: 40,
                          height: 40,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Pir!',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Temukan buku terbaik untukmu hari ini.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 15),

                  // =========================
                  // LANJUTKAN MEMBACA
                  // =========================

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28),
                    child: Row(
                      children: [
                        Icon(
                          Icons.menu_book,
                          color: Color(0xff2144a4),
                          size: 22,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Lanjutkan Membaca',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2144a4),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 5),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Container(
                      height: 176,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0xfff3f3f3),
                            Color(0xff5191ff),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Container(
                              width: 89,
                              height: 129,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Colors.black54,
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.asset(
                                  'images/assets/injustice2.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            const SizedBox(width: 15),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Injustice 2',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  const Text(
                                    'Tom Taylor',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                    ),
                                  ),

                                  const SizedBox(height: 18),

                                  const Text(
                                    '68% Selesai',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff005dff),
                                    ),
                                  ),

                                  const SizedBox(height: 8),

                                  Container(
                                    height: 4,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius:
                                      BorderRadius.circular(10),
                                    ),
                                    child: FractionallySizedBox(
                                      alignment: Alignment.centerLeft,
                                      widthFactor: 0.68,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xff005dff),
                                          borderRadius:
                                          BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 9),

                                  SizedBox(
                                    height: 32,
                                    width: 130,
                                    child: ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.play_arrow,
                                        size: 16,
                                      ),
                                      label: const Text(
                                        'Lanjutkan',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                        const Color(0xff005dff),
                                        foregroundColor: Colors.white,
                                        padding: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(7),
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
                    ),
                  ),

                  const SizedBox(height: 18),

                  // =========================
                  // KATEGORI
                  // =========================

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    child: Text(
                      'Kategori',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 13),

                        for (int i = 0; i < kategori.length; i++)
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: _CategoryItem(
                              nama: kategori[i]['nama']!,
                              gambar: kategori[i]['gambar']!,
                            ),
                          ),

                        const SizedBox(width: 5),
                      ],
                    ),
                  ),

                  const SizedBox(height: 15),

                  // =========================
                  // RENTAL & KOLEKSI
                  // =========================

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 13),

                        _RentalCard(),

                        const SizedBox(width: 12),

                        _CollectionCard(),

                        const SizedBox(width: 13),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  // =========================
                  // BUKU POPULER
                  // =========================

                  _BookSection(
                    title: '🔥 Buku Populer',
                    books: bukuPopuler,
                  ),

                  const SizedBox(height: 25),

                  // =========================
                  // REKOMENDASI
                  // =========================

                  _BookSection(
                    title: 'Rekomendasi Untuk Kamu',
                    books: rekomendasi,
                  ),

                  const SizedBox(height: 25),

                  // =========================
                  // BISNIS
                  // =========================

                  _BookSection(
                    title: 'Bisnis & Investasi',
                    books: bisnis,
                  ),

                  const SizedBox(height: 25),

                  // =========================
                  // SASTRA
                  // =========================

                  _BookSection(
                    title: 'Sastra & Fiksi',
                    books: sastra,
                  ),

                  const SizedBox(height: 25),

                  // =========================
                  // SEPERTI INJUSTICE
                  // =========================

                  _BookSection(
                    title: 'Lainnya seperti Injustice 2',
                    books: sepertiInjustice,
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),

          // =========================
          // BOTTOM NAVIGATION
          // =========================

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 82,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _BottomMenu(
                    icon: 'images/assets/home_btn_blue.png',
                    label: 'Beranda',
                    selected: selectedMenu == 0,
                    onTap: () {
                      setState(() {
                        selectedMenu = 0;
                      });
                    },
                  ),

                  _BottomMenu(
                    icon: 'images/assets/search_btn.png',
                    label: 'Eksplorasi',
                    selected: selectedMenu == 1,
                    onTap: () {
                      setState(() {
                        selectedMenu = 1;
                      });
                    },
                  ),

                  _BottomMenu(
                    icon: 'images/assets/books_collection.png',
                    label: 'Koleksi',
                    selected: selectedMenu == 2,
                    onTap: () {
                      setState(() {
                        selectedMenu = 2;
                      });
                    },
                  ),

                  _BottomMenu(
                    icon: 'images/assets/profile_btn.png',
                    label: 'Profil',
                    selected: selectedMenu == 3,
                    onTap: () {
                      setState(() {
                        selectedMenu = 3;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// =====================================================
// CATEGORY ITEM
// =====================================================

class _CategoryItem extends StatelessWidget {
  final String nama;
  final String gambar;

  const _CategoryItem({
    required this.nama,
    required this.gambar,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Kategori $nama dipilih'),
          ),
        );
      },
      child: Container(
        width: 69,
        height: 69,
        decoration: BoxDecoration(
          color: const Color(0xfff5f8ff),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              gambar,
              width: 39,
              height: 39,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 1),
            Text(
              nama,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// =====================================================
// RENTAL CARD
// =====================================================

class _RentalCard extends StatelessWidget {
  const _RentalCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 179,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xffeffff6),
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Rental Aktif',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2c594b),
                ),
              ),

              const Spacer(),

              TextButton(
                onPressed: () {},
                child: const Text(
                  'Lihat Semua →',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff2c594b),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 1),

          Expanded(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    'images/assets/letthemtheory.jpg',
                    width: 89,
                    height: 129,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(width: 17),

                Expanded(
                  child: Container(
                    height: 129,
                    padding: const EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      color: const Color(0xfff5fef0),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'The Let Them Theory',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const Text(
                          'Mel Robbins',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.black54,
                          ),
                        ),

                        const SizedBox(height: 9),

                        const Text(
                          '⏱  5 Hari',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const Spacer(),

                        SizedBox(
                          width: double.infinity,
                          height: 32,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                              const Color(0xff5e9d82),
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(7),
                              ),
                            ),
                            child: const Text(
                              'Baca Sekarang',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// =====================================================
// COLLECTION CARD
// =====================================================

class _CollectionCard extends StatelessWidget {
  const _CollectionCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 179,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xfff3e8ff),
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Koleksi Saya',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff4f3886),
            ),
          ),

          const SizedBox(height: 10),

          Row(
            children: [
              Image.asset(
                'images/assets/books_collection.png',
                width: 39,
                height: 39,
              ),

              const SizedBox(width: 15),

              const Text(
                'Buku Dimiliki',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4f3886),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              Image.asset(
                'images/assets/callender_collection.png',
                width: 42,
                height: 42,
              ),

              const SizedBox(width: 12),

              const Text(
                'Rental Aktif',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4f3886),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


// =====================================================
// BOOK SECTION
// =====================================================

class _BookSection extends StatelessWidget {
  final String title;
  final List<Map<String, String>> books;

  const _BookSection({
    required this.title,
    required this.books,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              TextButton(
                onPressed: () {},
                child: const Text(
                  'Lihat Semua →',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff68a0df),
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 2),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 13),

              for (int i = 0; i < books.length; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: _BookCard(
                    judul: books[i]['judul']!,
                    penulis: books[i]['penulis']!,
                    gambar: books[i]['gambar']!,
                  ),
                ),

              const SizedBox(width: 4),
            ],
          ),
        ),
      ],
    );
  }
}


// =====================================================
// BOOK CARD
// =====================================================

class _BookCard extends StatelessWidget {
  final String judul;
  final String penulis;
  final String gambar;

  const _BookCard({
    required this.judul,
    required this.penulis,
    required this.gambar,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$judul dipilih'),
          ),
        );
      },
      child: SizedBox(
        width: 89,
        height: 164,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 89,
              height: 129,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  gambar,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 4),

            Text(
              judul,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              penulis,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 10,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// =====================================================
// BOTTOM MENU
// =====================================================

class _BottomMenu extends StatelessWidget {
  final String icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _BottomMenu({
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 32,
            height: 32,
          ),

          const SizedBox(height: 2),

          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight:
              selected ? FontWeight.bold : FontWeight.normal,
              color:
              selected ? const Color(0xff005dff) : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}