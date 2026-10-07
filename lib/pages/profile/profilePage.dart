import 'package:flutter/material.dart';
import '../home/homePage.dart';
import '../exploration/explorationPage.dart';
import 'informasiAkunPage.dart';
import 'keamananPage.dart';
import 'riwayatPembelianPage.dart';
import 'pusatBantuanPage.dart';
import '../collection/collectionPage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedMenu = 3;

  void goToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 100),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),

                // JUDUL
                const Text(
                  'Profil Saya',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff17005c),
                  ),
                ),

                const SizedBox(height: 18),

                // PROFILE CARD
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xfff5f9ff),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black12,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 55,
                                height: 55,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    'images/assets/profile.png',
                                    fit: BoxFit.cover,
                                    errorBuilder:
                                        (context, error, stackTrace) {
                                      return const Icon(
                                        Icons.person,
                                        size: 38,
                                        color: Colors.white,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(width: 12),

                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ben',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'ben12@gmail.com',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.menu_book_outlined,
                                  color: Color(0xff4d7cff),
                                  size: 30,
                                ),
                                const SizedBox(height: 2),
                                const Text(
                                  '4',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Buku Dimiliki',
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            height: 55,
                            width: 1,
                            color: Colors.black12,
                          ),

                          Expanded(
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.access_time,
                                  color: Color(0xff4d7cff),
                                  size: 30,
                                ),
                                const SizedBox(height: 2),
                                const Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Rental Aktif',
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                const Text(
                  'Akun & Aktivitas',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                // MENU AKUN
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black12,
                    ),
                  ),
                  child: Column(
                    children: [
                      _ProfileMenu(
                        icon: Icons.person_outline,
                        title: 'Informasi Akun',
                        subtitle: 'Edit profil, email, menambah nomor',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                              const InformasiAkunPage(),
                            ),
                          );
                        },
                      ),

                      _ProfileMenu(
                        icon: Icons.lock_outline,
                        title: 'Keamanan',
                        subtitle: 'Ubah kata sandi akun',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const KeamananPage(),
                            ),
                          );
                        },
                      ),

                      _ProfileMenu(
                        icon: Icons.receipt_long_outlined,
                        title: 'Riwayat Transaksi',
                        subtitle: 'Lihat riwayat pembelian dan rental',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                              const RiwayatPembelianPage(),
                            ),
                          );
                        },
                      ),

                      _ProfileMenu(
                        icon: Icons.help_outline,
                        title: 'Pusat Bantuan',
                        subtitle: 'FAQ dan bantuan',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                              const PusatBantuanPage(),
                            ),
                          );
                        },
                        isLast: true,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 32),

                // KELUAR
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context,
                      '/login', (route) => false,
                      );
                    },
                    icon: const Icon(
                      Icons.logout,
                      color: Colors.red,
                    ),
                    label: const Text(
                      'Keluar Dari Akun',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.red,
                        width: 1.5,
                      ),
                      backgroundColor: const Color(0xffffeeee),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),

      // BOTTOM MENU
      bottomNavigationBar: Container(
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
              onTap: goToHome,
            ),

            _BottomMenu(
              icon: 'images/assets/search_btn.png',
              label: 'Eksplorasi',
              selected: selectedMenu == 1,
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExplorationPage(),
                  ),
                );
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
    );
  }
}


// =====================================================
// PROFILE MENU
// =====================================================

class _ProfileMenu extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool isLast;

  const _ProfileMenu({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          border: isLast
              ? null
              : const Border(
            bottom: BorderSide(
              color: Colors.black12,
            ),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffeaf5ff),
              ),
              child: Icon(
                icon,
                color: Color(0xff4d8cff),
                size: 23,
              ),
            ),

            const SizedBox(width: 10),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            const Icon(
              Icons.chevron_right,
              color: Colors.grey,
              size: 30,
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