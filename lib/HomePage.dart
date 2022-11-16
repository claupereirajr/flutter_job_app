import 'package:flutter/material.dart';
import 'package:flutter_gupy_jobapp/utils/jobcard.dart';
import 'package:flutter_gupy_jobapp/utils/recentjobs.dart';

class JobType {
  final String empresa;
  final String vaga;
  final String tipo;
  final String logo;
  final int hora;

  JobType({
    required this.empresa,
    required this.vaga,
    required this.tipo,
    required this.logo,
    required this.hora,
  });
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<JobType> jobsForYour = [
    JobType(
        empresa: "Googlge",
        tipo: "Meio período",
        vaga: "Rust Developer",
        logo: "https://cdn-icons-png.flaticon.com/512/300/300221.png",
        hora: 45),
    JobType(
        empresa: "Meta",
        tipo: "Período integral",
        vaga: "Data Engineer",
        logo: "https://cdn-icons-png.flaticon.com/512/6033/6033716.png",
        hora: 72),
    JobType(
        empresa: "Stone",
        tipo: "Meio período",
        vaga: "Flutter Developer",
        logo:
            "https://media.glassdoor.com/sqll/1093539/stone-squareLogo-1612971330139.png",
        hora: 38),
    JobType(
        empresa: "OLX Group",
        tipo: "Período integral",
        vaga: "Data Analyst",
        logo:
            "https://seeklogo.com/images/O/olx-group-logo-D786F321B8-seeklogo.com.png",
        hora: 52),
  ];

  List<JobType> recentJobs = [
    JobType(
        empresa: "OLX Group",
        tipo: "Meio período",
        vaga: "FullStack Developer",
        logo:
            "https://seeklogo.com/images/O/olx-group-logo-D786F321B8-seeklogo.com.png",
        hora: 46),
    JobType(
        empresa: "OLX Group",
        tipo: "Meio período",
        vaga: "FullStack Developer",
        logo:
            "https://seeklogo.com/images/O/olx-group-logo-D786F321B8-seeklogo.com.png",
        hora: 46),
    JobType(
        empresa: "OLX Group",
        tipo: "Meio período",
        vaga: "FullStack Developer",
        logo:
            "https://seeklogo.com/images/O/olx-group-logo-D786F321B8-seeklogo.com.png",
        hora: 46),
    JobType(
        empresa: "OLX Group",
        tipo: "Meio período",
        vaga: "FullStack Developer",
        logo:
            "https://seeklogo.com/images/O/olx-group-logo-D786F321B8-seeklogo.com.png",
        hora: 46),
    JobType(
        empresa: "OLX Group",
        tipo: "Meio período",
        vaga: "FullStack Developer",
        logo:
            "https://seeklogo.com/images/O/olx-group-logo-D786F321B8-seeklogo.com.png",
        hora: 46),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: IconButton(
            alignment: Alignment.center,
            iconSize: 36.0,
            icon: const Icon(
              Icons.menu,
              color: Colors.black54,
            ),
            onPressed: () {},
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
          )
        ],
        elevation: 0,
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Encontre um novo caminho',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Pesquise uma vaga',
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                IconButton(
                  alignment: Alignment.center,
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                  color: Colors.white,
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.black87,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            const Text(
              'Pra Você',
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 140.0,
              child: ListView.builder(
                itemCount: jobsForYour.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return JobCard(
                      empresa: jobsForYour[index].empresa,
                      vaga: jobsForYour[index].vaga,
                      tipo: jobsForYour[index].tipo,
                      logo: jobsForYour[index].logo,
                      hora: jobsForYour[index].hora);
                },
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            const Text(
              'Recentes',
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: recentJobs.length,
                itemBuilder: (context, index) {
                  return RecentJobs(
                      empresa: recentJobs[index].empresa,
                      vaga: recentJobs[index].vaga,
                      tipo: recentJobs[index].tipo,
                      logo: recentJobs[index].logo,
                      hora: recentJobs[index].hora);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
