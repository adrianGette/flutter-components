import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
        backgroundColor: Colors.purple,
      ),
      body: _list(),
    );
  } 

  Widget _list() {

    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _itemsList(snapshot.data),
        ); 
      }
    );

  }

  List<Widget> _itemsList(List<dynamic> data) {

    final List<Widget> options = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.article_rounded, color: Colors.purple,),
        trailing: Icon(Icons.arrow_forward_rounded, color: Colors.purple,),
        onTap: (){},
      );

      options..add(widgetTemp)
             ..add(Divider()); 
    });

    return options;
  }
}