import 'package:flutter/material.dart';

class InformasiAkunPage extends StatefulWidget {
  const InformasiAkunPage({super.key});

  @override
  State<InformasiAkunPage> createState() => _InformasiAkunPageState();
}

class _InformasiAkunPageState extends State<InformasiAkunPage> {
  String nama = 'Ben';
  String email = 'ben12@gmail.com';
  String nomorHandphone = '';

  void editNama() {
    TextEditingController controller =
    TextEditingController(text: nama);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Nama Lengkap'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(
              labelText: 'Nama Lengkap',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  setState(() {
                    nama = controller.text;
                  });
                }

                Navigator.pop(context);
              },
              child: const Text('Simpan'),
            ),
          ],
        );
      },
    );
  }

  void editEmail() {
    TextEditingController controller =
    TextEditingController(text: email);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Email'),
          content: TextField(
            controller: controller,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  setState(() {
                    email = controller.text;
                  });
                }

                Navigator.pop(context);
              },
              child: const Text('Simpan'),
            ),
          ],
        );
      },
    );
  }

  void editNomorHandphone() {
    TextEditingController controller =
    TextEditingController(text: nomorHandphone);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Nomor Handphone'),
          content: TextField(
            controller: controller,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              labelText: 'Nomor Handphone',
              hintText: 'Masukkan nomor handphone',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  nomorHandphone = controller.text;
                });

                Navigator.pop(context);
              },
              child: const Text('Simpan'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black87,
        title: const Text(
          'Informasi Akun',
          style: TextStyle(
            color: Color(0xff17005c),
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 20),

            // FOTO PROFIL
            CircleAvatar(
              radius: 32,
              backgroundColor: Colors.grey.shade300,
              child: const Icon(
                Icons.person,
                size: 40,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 8),

            // NAMA
            Text(
              nama,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Edit Profil',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 12),

            // EMAIL
            _AccountItem(
              title: 'Email',
              value: email,
              onTap: editEmail,
            ),

            // NAMA
            _AccountItem(
              title: 'Nama Lengkap',
              value: nama,
              onTap: editNama,
            ),

            // NOMOR HP
            _AccountItem(
              title: 'Tambahkan Nomor Handphone',
              value: nomorHandphone,
              onTap: editNomorHandphone,
              isLast: true,
            ),
          ],
        ),
      ),
    );
  }
}

class _AccountItem extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback onTap;
  final bool isLast;

  const _AccountItem({
    required this.title,
    required this.value,
    required this.onTap,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          border: Border(
            left: const BorderSide(
              color: Colors.black12,
            ),
            right: const BorderSide(
              color: Colors.black12,
            ),
            top: const BorderSide(
              color: Colors.black12,
            ),
            bottom: isLast
                ? const BorderSide(
              color: Colors.black12,
            )
                : BorderSide.none,
          ),
          borderRadius: BorderRadius.vertical(
            top: title == 'Email'
                ? const Radius.circular(8)
                : Radius.zero,
            bottom: isLast
                ? const Radius.circular(8)
                : Radius.zero,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),

                  Text(
                    value.isEmpty
                        ? 'Belum ditambahkan'
                        : value,
                    style: TextStyle(
                      fontSize: 11,
                      color: value.isEmpty
                          ? Colors.grey
                          : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            const Icon(
              Icons.edit_outlined,
              color: Colors.grey,
              size: 27,
            ),
          ],
        ),
      ),
    );
  }
}