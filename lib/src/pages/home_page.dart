import 'package:appsplash/src/pages/pagina_binding.dart';
import 'package:appsplash/src/pages/pagina_datos_no_required.dart';
import 'package:appsplash/src/pages/pagina_datos_required.dart';
import 'package:appsplash/src/pages/pagina_ruta.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
 const HomePage({Key? key}) : super(key: key);

  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   
  String title ='Titulo de app'; 
  String description ='Description de app'; 

  int numero = 0;

  @override
  void initState() {
    debugPrint(' =============================== initState() ===============================');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    debugPrint(' =============================== didChangeDependencies() ===============================');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant HomePage oldWidget) {
    debugPrint(' =============================== didUpdateWidget(oldWidget) ===============================');
    debugPrint(numero.toString());
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
     debugPrint(' =============================== deactive() ===============================');
    super.deactivate();
  }

  @override
  void dispose() {
    debugPrint(' =============================== dispose() ===============================');
    super.dispose();
  }

  void incrementar(){
    numero+=1;
    setState(() {
      debugPrint(' =============================== setState() ===============================');
    });
  }

  @override
  Widget build(BuildContext context) {
     debugPrint(' =============================== Build ===============================');
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed:()=> incrementar(), 
                child: Text(numero.toString())
              ),
              ElevatedButton(
                onPressed:(){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const PaginaRuta()), 
                  );
                }, 
                child: const Text('Enviar Data con PushReplacement.')
              ),
              ElevatedButton(
                onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PaginaRuta()), 
                  );
                }, 
                child: const Text('Enviar Data con Push')
              ),
              ElevatedButton(
                onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  PaginaBinding()), 
                  );
                }, 
                child: const Text('Pagina Binding')
              ),
              const Divider(),
              ElevatedButton(
                onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  PaginaDatosRequeridos(title:title,description: description)), 
                  );
                }, 
                child: const Text('Pagina Datos Requeridos')
              ),
              ElevatedButton(
                onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  PaginaDatosNoRequeridos(title,null)), 
                  );
                }, 
                child: const Text('Pagina Datos No Requeridos')
              ),
            ],
          ),
        )
      ),
    );
  }
}