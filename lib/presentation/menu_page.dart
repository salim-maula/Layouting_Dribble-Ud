import 'package:flutter/material.dart';
import 'package:listview_udemy/presentation/menu_list/menu_list_page.dart';
import 'package:listview_udemy/presentation/profile/profile_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Page')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuListPage()),
                  );
                },
                child: const Text('Grid Page'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
                child: const Text('Ui Drible'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}