// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String empresa;
  final String vaga;
  final String tipo;
  final String logo;
  final int hora;

  const JobCard({
    Key? key,
    required this.empresa,
    required this.vaga,
    required this.tipo,
    required this.logo,
    required this.hora,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        width: 180.0,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 56.0,
                  width: 56.0,
                  child: Image.network(
                    logo,
                    fit: BoxFit.cover,
                    alignment: Alignment.topLeft,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 3.0, horizontal: 6.0),
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(6.0)),
                  child: Text(
                    tipo,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11.0,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Text(
              vaga,
              style:
                  const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
            ),
            Text('R\$$hora/hora')
          ],
        ),
      ),
    );
  }
}
