import 'package:flutter/material.dart';
import 'package:flutter_codigo_components/pages/alert_page.dart';
import 'package:flutter_codigo_components/pages/avatar_page.dart';
import 'package:flutter_codigo_components/pages/cards_page.dart';
import 'package:flutter_codigo_components/pages/grid_page.dart';
import 'package:flutter_codigo_components/pages/input_page.dart';
import 'package:flutter_codigo_components/pages/list_page.dart';
import 'package:flutter_codigo_components/pages/selection_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    // color: Colors.redAccent,
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle.jpg")),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(5, 5),
                        blurRadius: 12,
                      ),
                    ]),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.poppins(
                  fontSize: 22.0,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(
                width: 160.0,
                child: Divider(),
              ),
              ItemComponetWidget(title: "Avatar", toPage:AvatarPage()),
              ItemComponetWidget(title: "Alerts", toPage:AlerPage()),
              ItemComponetWidget(title: "Cards", toPage:CardPage()),
              ItemComponetWidget(title: "Input", toPage:InputPage()),
              ItemComponetWidget(title: "Selection", toPage:SelectionPage()),
              ItemComponetWidget(title: "List", toPage:ListPage()),
              ItemComponetWidget(title: "Grid View", toPage:GridPage()),




            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponetWidget extends StatelessWidget {
  String title;
  Widget toPage;
  ItemComponetWidget({required this.title, required this.toPage});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => toPage));
        },
        leading: Icon(
          Icons.check_circle_outline,
          color: Color(0xff14213d),
        ),
        title: Text(
          title,
          style: GoogleFonts.poppins(),
        ),
        subtitle: Text(
          "Ir al detalle del $title",
          style: GoogleFonts.poppins(),
        ),
        trailing: Icon(
          Icons.chevron_right,
        ),
      ),
    );
  }
}




