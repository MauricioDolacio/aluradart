// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Tarefas')),
        body: ListView(
          children: [
            Task('Aprender Flutter macarronada'),
            Task('Programar'),
            Task('Andar de Bike'),
            Task('Andar de Bike'),
            Task('Andar de Bike'),
            Task('Andar de Bike'),
            Task('Andar de Bike'),
            Task('Andar de Bike'),
            Task('Andar de Bike'),
            Task('Andar de Bike'),
            Task('Andar de Bike'),
            Task('Andar de Bike'),
            Task('Andar de Bike'),
            Task('Andar de Bike'),
          ]
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }
}

class Task extends StatelessWidget {
  final String task;
  const Task(this.task, {Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: Stack(
            children: [
              Container(
                color: Colors.blue,
                height: 140,
              ),
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black26,
                      width: 72,
                      height: 100,
                    ),
                    Container(
                      width: 200,
                      child: Text(
                      task,
                      style: TextStyle(
                        fontSize: 20,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Icon(Icons.arrow_drop_up),
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
