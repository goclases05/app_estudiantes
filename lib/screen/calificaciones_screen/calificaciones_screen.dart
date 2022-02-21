import 'package:flutter/material.dart';

class CalificacionesScreen extends StatelessWidget {
  const CalificacionesScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15,),
            // ignore: avoid_unnecessary_containers
            Container(
              padding:const EdgeInsets.symmetric(horizontal: 10),
              child: const Text(
                'Calificaciones:',style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 16, 124, 173),
                ),
              ),
            ),
            const SizedBox(height: 20,),
             Card(
              elevation: 2,
              shape: const RoundedRectangleBorder(
              borderRadius:  BorderRadius.all(
                  Radius.circular(20),
                )
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: Image.asset('assets/perfil.png',),
                  ),
                  title: Text('Nombre: Juan Perez Sosa'),
                  subtitle: Text('Usuario: 02587436'),

                ),
              ),
            ),
            Card(
              elevation: 2,
              shape: const RoundedRectangleBorder(
              borderRadius:  BorderRadius.all(
                  Radius.circular(10),
                )
              ),
              child: Container(
                padding:const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children:const [
                           Text(
                              'Cursos Reprobados:',style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 21, 130, 180),
                              ),
                            ),
                             SizedBox(width: 10,),
                            Text(
                              '0',style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      children:const [
                           Text(
                              'Cursos Aprobados:',style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 21, 130, 180),
                              ),
                            ),
                             SizedBox(width: 10,),
                            Text(
                              '0',style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      children:const [
                           Text(
                              'Promedio Final:',style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 21, 130, 180),
                              ),
                            ),
                             SizedBox(width: 10,),
                            Text(
                              '0',style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      children:const [
                           Text(
                            'Estado:',style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 21, 130, 180),
                            ),
                          ),
                      ],
                    ),
                    
                   Center(
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.warning,color: Color.fromARGB(255, 223, 169, 6),),
                            SizedBox(width: 10,),
                            Text(
                              'Estado:',style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 223, 169, 6),
                              ),
                            ),
                          ],
                        ),
                      )
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}