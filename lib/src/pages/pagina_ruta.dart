import 'package:appsplash/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class PaginaRuta extends StatefulWidget {
  const PaginaRuta({Key? key}) : super(key: key);

  @override
  State<PaginaRuta> createState() => _PaginaRutaState();
}

class _PaginaRutaState extends State<PaginaRuta> {

  @override
  void initState() {
    debugPrint(' =============================== initState() 2 ===============================');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    debugPrint(' =============================== didChangeDependencies() 2 ===============================');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant PaginaRuta oldWidget) {
    debugPrint(' =============================== didUpdateWidget(oldWidget) 2 ===============================');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    debugPrint(' =============================== dispose() 2 ===============================');
    super.dispose();
  }

  void incrementar(){
    setState(() {
      debugPrint(' =============================== setState() 2 ===============================');
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recibir Data..'),
      ),
      body: Column(
        children: [
          const Text('Hola'),
          ElevatedButton(
            onPressed:(){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>const HomePage()), 
              );
            }, 
            child: const Text('Regresar....')
          ),
        ],
      ),
      
    );
  }
}
