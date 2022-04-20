import 'package:flutter/material.dart';

class PaginaBinding extends StatefulWidget {
  PaginaBinding({Key? key}) : super(key: key);

  @override
  State<PaginaBinding> createState() => _PaginaBindingState();
}

class _PaginaBindingState extends State<PaginaBinding>  with WidgetsBindingObserver{
  
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('===================didChangeAppLifecycleState');
    print(state);
    print('===================didChangeAppLifecycleState');

    if(state == AppLifecycleState.resumed){
      print('Volvio a cargar Aplicacion');
    }
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
  }

   @override
  void didUpdateWidget(covariant PaginaBinding oldWidget) {
    print('=============didUpdateWidget=======================');
    print(oldWidget);
    print('==============didUpdateWidget========================');
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }


  @override
  void initState() {
    WidgetsBinding.instance?.addObserver(this);
    super.initState();
    
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola Mundo'),
      ),
      body: Container(
        child:ElevatedButton(
                onPressed:(){
                  print('Hola ...');
                }, 
                child: const Text('Pagina Binding')
              ),
      ),
    );
  }
}