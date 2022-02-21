import 'package:app_estudiantes/screen/calificaciones_screen/calificaciones_screen.dart';
import 'package:app_estudiantes/screen/comportamiento_screen/comportamiento_screen.dart';
import 'package:app_estudiantes/widgets/widgets.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../cursos_screen/cursos_screen.dart';
import '../eventos_screen/evento_screen.dart';

class EscritorioScreen extends StatefulWidget {

  @override
  _EscritorioScreenState createState() => _EscritorioScreenState();
}

class _EscritorioScreenState extends State<EscritorioScreen> {
  int _paginaActual=0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController=PageController(
      initialPage: _paginaActual,

    );
    super.initState();
  }


  final List<Widget>_paginas=[
    const CursosScreen(),
    EventosScreen(),
    ComportamientoScreen(),
    EventosScreen()
  ];
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Color.fromARGB(255, 9, 127, 182)),
          title: Image.asset('assets/gclase_azul.png',width: 80,),
          backgroundColor:Colors.white,
          elevation: 1,
          shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          actions: [
            Container(
              padding: const EdgeInsets.only(top: 8),
              child: Badge(
                badgeContent: const Text('9',style: TextStyle(color: Colors.white),),
                child:CircleAvatar(
                  backgroundColor: Colors.blueGrey[100],
                  radius:18,
                  child: const Icon(Icons.email_sharp,size: 20,color: Colors.white,)
                ),
                badgeColor: Colors.orange.shade900,
                //position: BadgePosition.topEnd(),
                //animationType: BadgeAnimationType.fade,
                animationDuration: const Duration(milliseconds: 250),
              ),
            ),
            const SizedBox(width: 20),
            Container(
              padding:const EdgeInsets.only(top: 8),
              child: Badge(
                badgeContent: const Text('9',style: TextStyle(color: Colors.white),),
                child:CircleAvatar(
                  backgroundColor: Colors.blueGrey[100],
                  radius:18,
                  child: const Icon(Icons.notifications_sharp,size: 20,color: Colors.white,)
                ),
                badgeColor: Colors.yellow.shade700,
                //position: BadgePosition.topEnd(),
                animationType: BadgeAnimationType.scale,
                //animationDuration: Duration(milliseconds: 250),
              ),
            ),
            const SizedBox(width: 20),
            Container(
              padding: const EdgeInsets.only(top: 8),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.blueGrey[100],
                child:
                Image.asset('assets/perfil.png',fit: BoxFit.cover ,)
                //const Icon(Icons.person,size:25,color: Colors.white,)
              ),
            ),
            const SizedBox(width: 10,),
          ],
        ),
        drawer: Drawer(
          
          backgroundColor: Colors.grey[100],
          shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight:Radius.circular(30),
              bottomRight: Radius.circular(30) 
              
            )
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
                DrawerHeader(
                decoration:const BoxDecoration(
                  color: Color.fromARGB(255, 2, 96, 150),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 20),
                      child: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        maxRadius: 30,
                        child: Image.asset('assets/perfil.png'),
                      ),
                    ),
                    const ListTile(
                      title: Text('Nombre del usuario',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),),
                      subtitle: Text('Usuario: '+'523678',style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),),
                    ),
                  ],
                ),
              ),
              ListTileMenu('assets/inicio.png', 'Inicio'),
              Divider(),
              ListTileMenu('assets/datos.png', 'Datos de Inscripción'),
              Divider(),
              ListTileMenu('assets/actividades.png', 'Actividades Hoy/ Proximos 7 días'),
              Divider(),
              ListTileMenu('assets/pagos.png', 'Pagos'),
              Divider(),
              ListTileMenu('assets/circulares.png', 'Circulares'),
              Divider(),
              ListTileMenu('assets/encuestas.png', 'Encuestas'),
              Divider(),
              ListTileMenu('assets/salir.png', 'Salir'),
            ],
          ),
        ),
        //body: _paginas[_paginaActual],
        //PageView
        body: PageView(
          controller: _pageController,
          onPageChanged: (newpage){
            setState(() {
              this._paginaActual=newpage;
            });
          },
          children: [
            const CursosScreen(),
            const CalificacionesScreen(),
            const ComportamientoScreen(),
            EventosScreen(),
            
          ],
        ),
        //Pageview
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            onTap: (index){
              this._pageController.animateToPage(index, duration:const Duration(milliseconds: 500), curve: Curves.easeIn);
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.lightBlue[800],
            selectedItemColor: Colors.white,
            unselectedItemColor: const Color.fromARGB(127, 255, 255, 255) ,//colorScheme.onSurface.withOpacity(.50),
            selectedLabelStyle: textTheme.caption,
            unselectedLabelStyle: textTheme.caption,
            currentIndex: _paginaActual,
            items:const [
            BottomNavigationBarItem(
              label: 'Cursos',
              icon: Icon(Icons.library_books),
            ),
            BottomNavigationBarItem(
              label:'Notas',
              icon: Icon(Icons.rule),
            ),
            BottomNavigationBarItem(
              label: 'Conducta',
              icon: Icon(Icons.insert_emoticon),
            ),
            BottomNavigationBarItem(
              label: 'Eventos',
              icon: Icon(Icons.calendar_month),
            ),
          ],
          ),
        ),
      );
  }
}