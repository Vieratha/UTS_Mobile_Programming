import 'package:flutter/material.dart';

class KoleksiDimilikiPage extends StatelessWidget {
  const KoleksiDimilikiPage({super.key});

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
                      'Buku Dimiliki',
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
                        _OwnedBook(
                          image:
                          'images/assets/misteripatung.jpg',
                          title: 'Misteri Patung Garam',
                          author: 'Ruwi Meita',
                        ),

                        const SizedBox(width: 6),

                        _OwnedBook(
                          image:
                          'images/assets/atomichabits.jpg',
                          title: 'Atomic Habits',
                          author: 'James Clear',
                        ),

                        const SizedBox(width: 6),

                        _OwnedBook(
                          image:
                          'images/assets/guardians.webp',
                          title:
                          'Connect Group Training 1',
                          author: 'GMS Church',
                        ),

                        const SizedBox(width: 6),

                        _OwnedBook(
                          image:
                          'images/assets/injustice2.jpg',
                          title: 'Injustice 2',
                          author: 'Tom Taylor',
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
// BOOK
// =====================================================

class _OwnedBook extends StatelessWidget {
  final String image;
  final String title;
  final String author;

  const _OwnedBook({
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