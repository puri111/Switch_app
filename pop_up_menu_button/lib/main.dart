

// ignore_for_file: unused_field

import 'package:flutter/material.dart';

void main() => runApp(const PopupApp());

class PopupApp extends StatefulWidget {
  const PopupApp({super.key});
 
 @override
State<PopupApp> createState() => _PopupAppState(); 
 } 
 class _PopupAppState extends  State <PopupApp> { 
  int _selectedMenu = 0; 
  @override 
  Widget build(BuildContext context) { 
    return Material( 
      home: Scaffold ( 
        appBar: AppBar(
          title: const Text('Theme In Fluter'), 
        ),
        body:Center(  
          child: Column( 
            children: [ 
              PopupMenuButton<int>(  
                onSelected: (int result) { 

                  setState(() { 
                    _selectedMenu = result;
                  });
                }, 
                itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
                  const PopupMenuItem<int>( 
                    value:1, 
                    child: ListTile(  
                      leading: Icon(Icons.dark_mode), 
                      title: Text('Dark Theme'), 
                    ), 

                  ), 
                  const PopupMenuItem<int>( 
                    value: 2, 
                    child: ListTile(  
                     leading: Icon(Icons.light_mode), 
                      title: Text('Light Theme'),
                    ),
                  ),
                 ],
              ),
            ],
          ),
        )),
      );
  }
 }