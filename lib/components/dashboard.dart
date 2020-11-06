import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("DashBoard"),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),

      ),
      body: _body(

      ),
    );
  }

  _body() {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(8),
      child: GridView.count(crossAxisCount: 2,
        children: [
          Card(
            child: InkWell(
              onTap: (){},
              splashColor: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.home, size: 60.0,),
                  Text("Home",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,

                  ),),
                ],
              ),
            ),
          ),

        ],
      ),

    );

  }
}
