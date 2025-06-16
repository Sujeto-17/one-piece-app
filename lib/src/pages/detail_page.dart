import 'package:flutter/material.dart';
import 'package:onepiece_list/src/widgets/blur_container.dart';
import 'package:onepiece_list/src/widgets/infotitle_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
    required this.color,
    required this.image,
    required this.nombre,
  });

  final int color;
  final String image;
  final String nombre;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  double alturaPantalla = 0;

  @override
  Widget build(BuildContext context) {
    alturaPantalla = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(widget.color), Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Hero(
                    tag: widget.color,
                    child: SizedBox(
                      height: alturaPantalla * 60 / 100,
                      child: Image.asset(widget.image),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: BlurContainer(
                    child: Container(
                      width: 160,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.1),
                      ),
                      child: Text(
                        widget.nombre,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "${widget.nombre} #personaje",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("One Piece", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InforTitle(title: "Eiichiro Oda", subtitle: "Creador"),
                  InforTitle(title: "Japón", subtitle: "País"),
                ],
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(widget.color),
                ),
                child: Text(
                  "Volver",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
