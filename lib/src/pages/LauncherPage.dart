import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LaunchesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dise;os en flutter"),
      ),
      body: _ListaOpciones(),
      drawer: _MenuPrincipal(),
    );
  }
}

class _ListaOpciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      separatorBuilder: (context,i)=>Divider(
        color: Colors.blue,
      ),
      itemCount: 20,
      itemBuilder: (context, i) => ListTile(
        leading: FaIcon(FontAwesomeIcons.slideshare, color: Colors.blue,),
        title: Text("Hola Mundo"),
        trailing: Icon(Icons.chevron_right,color: Colors.blue,),
        onTap: (){},
      ),
      
    );
  }
}


class _MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                padding: EdgeInsets.all(20.0),
                width: double.infinity,
                height: 200.0,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("FM", style: TextStyle(fontSize: 50.0),),
                ),
              ),
            ),

            Expanded(
              child: _ListaOpciones()
            ),

            ListTile(
              leading: Icon(Icons.lightbulb_outline,color: Colors.blue,),
              title: Text("Dark mode"),
              trailing: Switch.adaptive(
                  value: true, 
                  onChanged: (value){},
                  activeColor: Colors.green,
                ),
            ),

            ListTile(
              leading: Icon(Icons.add_to_home_screen,color: Colors.blue,),
              title: Text("Custom theme"),
              trailing: Switch.adaptive(
                  value: true, 
                  onChanged: (value){},
                  activeColor: Colors.green,
                ),
            )
          ],
        ),
      ),
    );
  }
}