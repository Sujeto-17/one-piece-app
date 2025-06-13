import 'package:flutter/material.dart';

class ListaPersonajes extends StatefulWidget {
  const ListaPersonajes({super.key});

  @override
  State<ListaPersonajes> createState() => _ListaPersonajesState();
}

class _ListaPersonajesState extends State<ListaPersonajes> {
  double widthPantalla = 0;
  final tituloStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    widthPantalla = MediaQuery.of(context).size.width - 50;
    return Expanded(
      child: ListView(
        padding: EdgeInsets.all(25),
        children: [
          Text("Portadas", style: tituloStyle),
          // Portadas
          SizedBox(height: 15),
          Row(
            children: [
              bloquesPortada("p1.jpg", "Portada 1 ", "2023"),
              SizedBox(width: widthPantalla * .03),
              bloquesPortada("p2.jpg", "Portada 2 ", "2024"),
              SizedBox(width: widthPantalla * .03),
              bloquesPortada("p3.jpg", "Portada 3 ", "2025"),
            ],
          ),
          Divider(
            height: 50,
            thickness: 2,
            color: Color.fromARGB(255, 62, 62, 62),
          ),
          bloquePersonajes("Brock", 0xff21E295, "o1"),
          bloquePersonajes("Brock", 0xff21E295, "o2"),
          bloquePersonajes("Brock", 0xff21E295, "o3"),
          bloquePersonajes("Brock", 0xff21E295, "o4"),
          bloquePersonajes("Brock", 0xff21E295, "o5"),
          bloquePersonajes("Brock", 0xff21E295, "o6"),
        ],
      ),
    );
  }

  Widget bloquesPortada(String image, String titulo, String subTitulo) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$image",
            width: widthPantalla * .31,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 15),
        RichText(
          text: TextSpan(
            text: titulo,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
            children: [
              TextSpan(
                text: subTitulo,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget bloquePersonajes(String nombre, int color, String imagen) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(66, 43, 43, 43),
      ),
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      offset: Offset(0, 5),
                      spreadRadius: 0.0,
                      blurStyle: BlurStyle.normal,
                      color: Color(color),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(8),
                child: Image.asset("assets/$imagen.png"),
              ),
              SizedBox(width: 12),
              Text(nombre, style: TextStyle(fontSize: 16, color: Colors.white)),
            ],
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_rounded, color: Colors.grey))
        ],
      ),
    );
  }
}
