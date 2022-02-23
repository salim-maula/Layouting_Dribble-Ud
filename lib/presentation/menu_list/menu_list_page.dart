import 'package:flutter/material.dart';
import 'package:listview_udemy/presentation/item_detail/item_detail_page.dart';

class MenuListPage extends StatefulWidget {
  const MenuListPage({Key? key}) : super(key: key);

  @override
  _MenuListPageState createState() => _MenuListPageState();
}

class _MenuListPageState extends State<MenuListPage> {
  List<String> listGambar = [
    'assets/images/food1.jfif',
    'assets/images/food2.jfif',
    'assets/images/food3.jfif',
    'assets/images/food1.jfif',
    'assets/images/food2.jfif',
    'assets/images/food3.jfif',
    'assets/images/food1.jfif',
    'assets/images/food2.jfif',
    'assets/images/food3.jfif',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            child: GridView.builder(
              itemCount: listGambar.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2 / 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5),
              itemBuilder: (context, idx) => InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> ItemDetailPage(gambar: listGambar[idx],))
                  );
                },
                child: ImageListItem(
                  listGambar: listGambar[idx],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ImageListItem extends StatelessWidget {
  const ImageListItem({
    Key? key,
    required this.listGambar,
  }) : super(key: key);

  final String listGambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Image.asset(
        listGambar,
        fit: BoxFit.cover,
      ),
    );
  }
}
