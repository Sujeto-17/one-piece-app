import 'package:flutter/material.dart';

class Headerwidget extends StatelessWidget {
  const Headerwidget({super.key});
  final tituloTextStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 26
  );
  final subTituloTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 17
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.all(25.0),
      height: 170.0,
      decoration: BoxDecoration(color: Color.fromARGB(255, 41, 40, 39)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // Titulo y sub titulo
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "One Piece",
                style: tituloTextStyle,
              ),
              Text(
                "Serie", style: subTituloTextStyle,
              )
            ],
          ),

          Row(
            children: [
              // Lupa
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withValues()
                ),
                child: IconButton(
                  icon: Icon(Icons.search, size: 18, color: Colors.white), onPressed: (){}),
              ),
              const SizedBox(
                width: 10,
              ),
              // Notificacion
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withValues()
                ),
                child: IconButton(
                  icon: Icon(Icons.notifications, size: 18, color: Colors.white), onPressed: (){}),
              )
            ],
          )
        ],
        // Busqueda y notificaciones

      ),
    );
  }
}
