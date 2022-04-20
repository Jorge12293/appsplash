import 'package:flutter/material.dart';

class PaginaDatosNoRequeridos extends StatefulWidget {
  String title;
  String? description;
  PaginaDatosNoRequeridos(this.title,this.description);

  @override
  // ignore: no_logic_in_create_state
  State<PaginaDatosNoRequeridos> createState() => _PaginaDatosNoRequeridosState(title,description);
}

class _PaginaDatosNoRequeridosState extends State<PaginaDatosNoRequeridos> {
  String title;
  String? description;
  _PaginaDatosNoRequeridosState(this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Container(
          child: Column(
            children: [
              Text(title),
              Divider(),
              Text(description ?? 'No hay description'),
            ],
          ),
        )
      ),
    );
  }
}