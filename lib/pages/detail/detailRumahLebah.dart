import 'package:flutter/material.dart';

class DetailRumahLebah extends StatelessWidget {
  const DetailRumahLebah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(22, 20, 22, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // =========================
              // BACK
              // =========================
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
              ),

              const SizedBox(height: 25),

              // =========================
              // INFORMASI BUKU
              // =========================
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      'images/assets/rumahlebah.jpg',
                      width: 62,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(width: 13),

                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Rumah Lebah',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 6),

                        const Text(
                          'Ruwi Meita',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey,
                          ),
                        ),

                        const SizedBox(height: 4),

                        const Text(
                          'Dirilis 30 Sep 2019',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // =========================
              // RATING & HALAMAN
              // =========================
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          '4,1 ⭐',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          '139 Ulasan',
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: 1,
                    height: 32,
                    color: Colors.black12,
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          '284',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          'Halaman',
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // =========================
              // BUTTON
              // =========================
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 28,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Color(0xff005dff),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(15),
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        child: const Text(
                          'Preview',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff005dff),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: SizedBox(
                      height: 28,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                          const Color(0xff3164ff),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(15),
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        child: const Text(
                          'Beli Rp 53.625',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              SizedBox(
                width: double.infinity,
                height: 28,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    const Color(0xff35ad78),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: const Text(
                    'Rental',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 17),

              const Divider(
                color: Colors.black12,
                height: 1,
              ),

              const SizedBox(height: 12),

              // =========================
              // TENTANG BUKU
              // =========================
              const Text(
                'Tentang Buku ini',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 7),

              const Text(
                'Mala, gadis kecil berusia enam tahun yang terobsesi dengan ensiklopedia. Dia hanya membaca buku ensiklopedia dan selalu mengurutkan buku satu sampai buku terakhir dari sisi kiri ke sisi kanan. Dia juga tertarik dengan beruang. Di rumah, Mala hanya tinggal bersama orangtuanya, tetapi dia selalu membicarakan enam orang asing yang hidup bersama di dalam rumahnya. Dia selalu takut pada Satira, bersahabat dekat dengan Wilis, berbicara dengan Tante Ana yang suka berdandan, belajar bahasa Spanyol dengan Abuela, dan si Kembar yang hanya bisa mendengar, melihat dan mencatat. Siapakah sebenarnya enam orang asing yang selalu dibicarakan Mala? Rahasia apakah yang dimiliki oleh enam orang asing tersebut?',
                style: TextStyle(
                  fontSize: 10,
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 45),

              // =========================
              // RATING DAN ULASAN
              // =========================
              const Text(
                'Rating dan ulasan',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 14),

              Row(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  // SCORE
                  Column(
                    children: [
                      const Text(
                        '4,1',
                        style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      const Text(
                        '★★★★☆',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xffffc400),
                        ),
                      ),

                      const SizedBox(height: 2),

                      const Text(
                        '139 Ulasan',
                        style: TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(width: 25),

                  // BAR RATING
                  Expanded(
                    child: Column(
                      children: [
                        _ratingBar('5', 0.70),
                        _ratingBar('4', 0.45),
                        _ratingBar('3', 0.08),
                        _ratingBar('2', 0.04),
                        _ratingBar('1', 0.10),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _ratingBar(String number, double value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          SizedBox(
            width: 10,
            child: Text(
              number,
              style: const TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(width: 3),

          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius:
                    BorderRadius.circular(5),
                  ),
                ),

                FractionallySizedBox(
                  widthFactor: value,
                  child: Container(
                    height: 4,
                    decoration: BoxDecoration(
                      color: const Color(0xff293cff),
                      borderRadius:
                      BorderRadius.circular(5),
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