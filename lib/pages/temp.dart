import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlerPage extends StatelessWidget {
  showMyAlert(BuildContext mandarina) {
    showDialog(
      context: mandarina,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Titulo del Alert"),
          backgroundColor: Colors.white,
          content: Text(
              "Hola este es el contenido de mi alert, este es texto de pruba"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                // Navigator.pop(context);
                // Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }

  showMyAlert2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(8.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          //title: Text("Hola"),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Hola a todos",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 6.0,
              ),
              const CircleAvatar(
                backgroundColor: Colors.black12,
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.amber,),
                  Icon(Icons.star, color: Colors.amber,),
                  Icon(Icons.star, color: Colors.amber,),
                  Icon(Icons.star, color: Colors.amber,),
                  Icon(Icons.star, color: Colors.amber,),
                ],
              ),
              const SizedBox(
                height: 6.0,
              ),
              Text(
                "Hola de nuevo, este es el content",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.black54,
                  fontSize: 13.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Cancelar",
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Aceptar",
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert(context);
              },
              child: Text("Alert 1"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert2(context);
              },
              child: Text("Alert 2"),
            ),
          ],
        ),
      ),
    );
  }
}
