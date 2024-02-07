import 'package:dam_project_app/widgets/widgetSetting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DamGuard',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Factor de seguridad'),
    Text('Index 2: Ayuda'),
    WidgetSettings()
  ];

  void _selectedOptionInBottonNavigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(59.0),
        child: AppBar(
          backgroundColor: Color.fromRGBO(142, 187, 142, 1),
          title: Row(
            children: <Widget>[
              Image.asset(
                '../build/flutter_assets/images/logo.png', // Ruta de la imagen en tus assets
                height: 240,
                width: 100, // Ajusta la altura según tus necesidades
              ), // Espacio entre la imagen y el título (opcional)
              Text('DamGuard'), // Título del AppBar
            ],
          ),
        ),
      ),
      body: Container(color: Color.fromRGBO(238, 234, 223, 1)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.analytics), label: 'Factor de Seguridad'),
          BottomNavigationBarItem(
              icon: Icon(Icons.help_center_rounded), label: 'Ayuda')
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Color.fromRGBO(136, 136, 136, 1),
        selectedItemColor: Color.fromRGBO(142, 187, 142, 1),
        onTap: _selectedOptionInBottonNavigation,
      ),
    );
  }
}
