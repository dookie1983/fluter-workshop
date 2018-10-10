import 'package:flutter/material.dart';
import './page/games.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Container(
            child: ListView(
          children: <Widget>[
            Image.network(
              'https://thecamerasview.files.wordpress.com/2017/01/dscf5146-edit1.jpg',
            ),
            _title,
            _navbar,
            _description,
            Games(name: "werewolf", price: 10000,)
          ],
        )),
      ),
    );
  }
}

var _title = Container(
  padding: const EdgeInsets.all(32.0),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'X100F',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Fujiflim camera',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      Text('41'),
    ],
  ),
);

var _description = Container(
  padding: const EdgeInsets.all(32.0),
  child: Text(
    '''
            The FUJIFILM X100F signifies the achievement of new heights in Fujifilms endless pursuit of perfection in photography. Perfection means creating a system that allows photographers to control, frame, and create with style, ease, and purpose. A long-anticipated iteration of the X100 series, the FUJIFILM X100F is a powerful addition to FUJIFILM X Series, offering photographers the versatility of endless creativity.
        ''',
    softWrap: true,
  ),
);

var _navbar = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildButtonColumn(Icons.add_shopping_cart, 'Add to Cart'),
      buildButtonColumn(Icons.add_circle_outline, 'Add to Wishlist'),
    ],
  ),
);

Column buildButtonColumn(IconData icon, String label) {
  Color color = const Color(0xFF42A5F5);
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8.0),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
