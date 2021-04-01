import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final options = ['One', 'Two', 'Three', 'Four', 'Five']; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temp Components'),
      ),
      body: ListView(
        //children: _createItems(),
        children: _createItemsShort(),
      ),
    );
  }

  List<Widget> _createItems() {

    List<Widget> list = new List<Widget>();

    for (String opt in options) {
      
      final tempWidget = ListTile(
        title: Text(opt),
      );

      list..add(tempWidget)
          ..add(Divider());
      // list.add(Divider());
    }

    return list;
  }


  List<Widget> _createItemsShort() {

    return options.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('Subtitle'),
            leading: Icon(Icons.account_balance_wallet_rounded),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}