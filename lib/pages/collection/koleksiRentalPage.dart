import 'package:flutter/material.dart';

class KoleksiRentalPage extends StatelessWidget {
  const KoleksiRentalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),

                  Padding(
                    padding:
                    const EdgeInsets.symmetric(
                      horizontal: 18,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        size: 25,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Padding(
                    padding:
                    EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text(
                      'Buku Rental',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 11),

                  Padding(
                    padding:
                    const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        _RentalBook(
                          image:
                          'images/assets/letthemtheory.jpg',
                          title: 'The Let Them Theory',
                          author: 'Mel Robbins',
                          days: '3 Hari Lagi',
                        ),

                        const SizedBox(width: 6),

                        _RentalBook(
                          image:
                          'images/assets/cintabedausia.png',
                          title: 'Cinta Beda Usia',
                          author: 'Nev Nov',
                          days: '6 Hari Lagi',
                        ),

                        const SizedBox(width: 6),

                        _RentalBook(
                          image:
                          'images/assets/toloverelease.png',
                          title: 'To Love, Release',
                          author: 'Pipit Chie',
                          days: '8 Hari Lagi',
                        ),
                      ],
                    ),
                  ),
                ],
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
// RENTAL BOOK
// =====================================================

class _RentalBook extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final String days;

  const _RentalBook({
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

          const SizedBox(height: 4),

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