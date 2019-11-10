import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ImovelDetailPage extends StatefulWidget {
  @override
  ImovelDetailPageState createState() => ImovelDetailPageState();
}

class ImovelDetailPageState extends State<ImovelDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   Icon(Icons.arrow_back)
      // ),
      body: ListView(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(5.0),
              child: Image.asset(
                'assets/logo_1.png',
                fit: BoxFit.fill,
              )),
          titleSection,
          buttonSection,
          detailSection,
        ],
      ),
    );
  }
}

Widget titleSection = Container(
  padding: EdgeInsets.all(32.0),
  color: Colors.black12,
  child: Row(
    children: <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Tipo - Título aki',
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Localização aki',
              style: TextStyle(color: Colors.purple[200]),
            )
          ],
        ),
      ),
      Icon(
        Icons.attach_money,
        color: Colors.purple,
      ),
      Text(
        'Preço aki',
        style: TextStyle(color: Colors.purple),
      )
    ],
  ),
);

Widget buttonSection = Container(
  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      _buildButtonColumn(
          Colors.purple, FontAwesomeIcons.ruler, 'Comprimento X,Y'),
      _buildButtonColumn(Colors.purple, FontAwesomeIcons.bed, 'Quartos X'),
      _buildButtonColumn(Colors.purple, FontAwesomeIcons.bath, 'Banheiro X'),
      _buildButtonColumn(
          Colors.purple, FontAwesomeIcons.warehouse, 'Garagem X'),
    ],
  ),
);

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(
        icon,
        color: color,
      ),
      Container(
        margin: const EdgeInsets.only(top: 8.0),
        child: Text(
          label,
          style: TextStyle(fontSize: 12.0, color: color),
        ),
      )
    ],
  );
}

Widget detailSection = Container(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: <Widget>[
      Text('Caracteristicas'),
      Divider(
        color: Colors.purple,
      ),
      Text('Descrição')
    ],
  ),
);
