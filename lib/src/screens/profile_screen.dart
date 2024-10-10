import 'package:flutter/material.dart';
import 'package:flutter_application_preferences/src/widgets/slide_menu.dart';

class PersonScreen extends StatelessWidget {
  static const String routerName = 'chat';
  const PersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Settings')),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              child: Text('R'),
            ),
          ),
        ],
      ),
      drawer: const SlideMenu(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(93, 167, 179, 1),
                      blurRadius: 30,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.black, width: 2)),
              child: const CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    'https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2023/08/20/16925227896569.png'),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black, width: 2),
                    boxShadow: const [
                      BoxShadow(blurRadius: 30, color: Colors.black)
                    ],
                    color: Colors.grey.shade100,
                  ),
                  width: double.infinity,
                  height: 280,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35),
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          border: Border.all(color: Colors.black, width: 2),
                          color: const Color.fromRGBO(93, 167, 179, 1)),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Cerrar Sesion',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            shadows: [
                              Shadow(color: Colors.black, blurRadius: 20)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 121),
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(color: Colors.black, width: 2),
                        color: const Color.fromRGBO(93, 167, 179, 1),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Pagar Colegiatura',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            shadows: [
                              Shadow(color: Colors.black, blurRadius: 20)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
