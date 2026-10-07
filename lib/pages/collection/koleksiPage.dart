import 'package:flutter/material.dart';
import 'koleksiDimilikiPage.dart';
import 'koleksiRentalPage.dart';

class KoleksiPage extends StatelessWidget {
  const KoleksiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(12, 14, 12, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Koleksi',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 2),

                    const Text(
                      'Lihat dan Baca Koleksi Bukumu',
                      style: TextStyle(
                        fontSize: 9,
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(height: 12),

                    // =========================
                    // BUKU DIMILIKI
                    // =========================
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(
                        8,
                        9,
                        8,
                        8,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffedf5ff),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: const Color(0xffdbeaff),
                                  borderRadius:
                                  BorderRadius.circular(15),
                                ),
                                child: const Icon(
                                  Icons.library_books,
                                  color: Color(0xff3164ff),
                                  size: 18,
                                ),
                              ),

                              const SizedBox(width: 7),

                              const Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Buku Dimiliki',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3164ff),
                                    ),
                                  ),
                                  Text(
                                    'Koleksi buku yang telah kamu beli dan miliki',
                                    style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          const SizedBox(height: 8),

                          Row(
                            children: [
                              _BookItem(
                                image:
                                'images/assets/misteripatung.jpg',
                                title: 'Misteri Patung Garam',
                                author: 'Ruwi Meita',
                              ),

                              const SizedBox(width: 5),

                              _BookItem(
                                image:
                                'images/assets/atomichabits.jpg',
                                title: 'Atomic Habits',
                                author: 'James Clear',
                              ),

                              const SizedBox(width: 5),

                              _BookItem(
                                image:
                                'images/assets/guardians.webp',
                                title: 'Connect Group',
                                author: 'GMS Church',
                              ),

                              const SizedBox(width: 5),

                              _BookItem(
                                image:
                                'images/assets/injustice2.jpg',
                                title: 'Injustice 2',
                                author: 'Tom Taylor',
                              ),
                            ],
                          ),

                          const SizedBox(height: 8),

                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const KoleksiDimilikiPage(),
                                ),
                              );
                            },
                            child: Container(
                              padding:
                              const EdgeInsets.only(top: 7),
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.library_books,
                                    color: Color(0xff3164ff),
                                    size: 17,
                                  ),

                                  const SizedBox(width: 5),

                                  const Expanded(
                                    child: Text(
                                      'Total 4 Buku',
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: Color(0xff3164ff),
                                        fontWeight:
                                        FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration:
                                    const BoxDecoration(
                                      color: Color(0xff3164ff),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.chevron_right,
                                      color: Colors.white,
                                      size: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 18),

                    // =========================
                    // RENTAL AKTIF
                    // =========================
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(
                        8,
                        9,
                        8,
                        8,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xfff1ffed),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: const Color(0xffdfffd8),
                                  borderRadius:
                                  BorderRadius.circular(15),
                                ),
                                child: const Icon(
                                  Icons.calendar_month,
                                  color: Colors.green,
                                  size: 18,
                                ),
                              ),

                              const SizedBox(width: 7),

                              const Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Rental Aktif',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                  Text(
                                    'Buku yang sedang kamu sewa.',
                                    style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          const SizedBox(height: 8),

                          Row(
                            children: [
                              _RentalBookItem(
                                image:
                                'images/assets/letthemtheory.jpg',
                                title: 'The Let Them Theory',
                                author: 'Mel Robbins',
                                days: '3 Hari Lagi',
                              ),

                              const SizedBox(width: 5),

                              _RentalBookItem(
                                image:
                                'images/assets/cintabedausia.png',
                                title: 'Cinta Beda Usia',
                                author: 'Nev Nov',
                                days: '6 Hari Lagi',
                              ),

                              const SizedBox(width: 5),

                              _RentalBookItem(
                                image:
                                'images/assets/toloverelease.png',
                                title: 'To Love, Release',
                                author: 'Pipit Chie',
                                days: '8 Hari Lagi',
                              ),
                            ],
                          ),

                          const SizedBox(height: 8),

                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const KoleksiRentalPage(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.access_time,
                                  color: Colors.green,
                                  size: 17,
                                ),

                                const SizedBox(width: 5),

                                const Expanded(
                                  child: Text(
                                    'Total 3 Buku Rental',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.green,
                                      fontWeight:
                                      FontWeight.bold,
                                    ),
                                  ),
                                ),

                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration:
                                  const BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.chevron_right,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            _buildBottomNavigation(),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigation() {
    return Container(
      height: 68,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.black12,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceAround,
        children: [
          _BottomMenu(
            icon: 'images/assets/home_btn.png',
            label: 'Beranda',
            selected: false,
          ),
          _BottomMenu(
            icon: 'images/assets/search_btn.png',
            label: 'Eksplorasi',
            selected: false,
          ),
          _BottomMenu(
            icon:
            'images/assets/books_collection_blue.png',
            label: 'Koleksi',
            selected: true,
          ),
          _BottomMenu(
            icon: 'images/assets/profile_btn.png',
            label: 'Profil',
            selected: false,
          ),
        ],
      ),
    );
  }
}


// =====================================================
// BUKU DIMILIKI
// =====================================================

class _BookItem extends StatelessWidget {
  final String image;
  final String title;
  final String author;

  const _BookItem({
    required this.image,
    required this.title,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              image,
              width: double.infinity,
              height: 82,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 3),

          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            author,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 6,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}


// =====================================================
// RENTAL BOOK
// =====================================================

class _RentalBookItem extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final String days;

  const _RentalBookItem({
    required this.image,
    required this.title,
    required this.author,
    required this.days,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              image,
              width: double.infinity,
              height: 82,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 3),

          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            author,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 6,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 3),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 2,
            ),
            decoration: BoxDecoration(
              color: const Color(0xffd8ffd1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.access_time,
                  size: 7,
                  color: Colors.green,
                ),
                const SizedBox(width: 2),
                Text(
                  days,
                  style: const TextStyle(
                    fontSize: 6,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
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
// BOTTOM MENU
// =====================================================

class _BottomMenu extends StatelessWidget {
  final String icon;
  final String label;
  final bool selected;

  const _BottomMenu({
    required this.icon,
    required this.label,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
      MainAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          width: 25,
          height: 25,
        ),

        const SizedBox(height: 2),

        Text(
          label,
          style: TextStyle(
            fontSize: 8,
            color: selected
                ? const Color(0xff3164ff)
                : Colors.grey,
          ),
        ),
      ],
    );
  }
}