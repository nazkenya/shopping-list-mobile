import 'package:flutter/material.dart';
import 'package:shopping_list/screens/menu.dart';
import 'package:shopping_list/screens/shoplist_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
            const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.indigo,
            ),
            child: Column(
                children: [
                Text(
                    'Shopping List',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Catat seluruh keperluan belanjamu di sini!",
                    textAlign: TextAlign.center, // Center alignment
                    style: TextStyle(
                      fontSize: 15, // Ukuran font 15
                      color: Colors.white, // Warna teks putih
                      fontWeight: FontWeight.normal, // Weight biasa
                    ),
                  ),
                ),
                ],
            ),
            ),
            ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                    ));
            },
            ),
            ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Tambah Produk'),
            // Bagian redirection ke ShopFormPage (sudah)
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShopFormPage(),
                ),
              );
            },
            ),
        ],
      ),
    );
  }
}