// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class RecentJobs extends StatelessWidget {
  final String empresa;
  final String vaga;
  final String tipo;
  final String logo;
  final int hora;

  const RecentJobs({
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
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 48.0,
                  width: 48.0,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.network(
                    logo,
                    fit: BoxFit.cover,
                    alignment: Alignment.topLeft,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      vaga,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18.0),
                    ),
                    Text(
                      empresa,
                      style:
                          const TextStyle(fontSize: 12.0, color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(6.0)),
              child: Text(
                'R\$$hora/hora',
                textAlign: TextAlign.end,
                style: TextStyle(color: Colors.green[800]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
