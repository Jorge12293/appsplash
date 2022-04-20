import 'package:flutter/material.dart';

class PaginaDatosRequeridos extends StatefulWidget {
  final String title;
  final String description;
  PaginaDatosRequeridos({required this.title, required this.description});

  @override
  // ignore: no_logic_in_create_state
  State<PaginaDatosRequeridos> createState() => _PaginaDatosRequeridosState(title:title,description:description);
}

class _PaginaDatosRequeridosState extends State<PaginaDatosRequeridos> {
  final String title;
  final String description;
  _PaginaDatosRequeridosState({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Container(
          child: Column(
            children: [
              Text(title),
              Divider(),
              Text(description),
            ],
          ),
        )
      ),
    );
  }
}