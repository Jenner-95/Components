import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        // padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0)
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0)


        ]
      ),
    );
  }
          
          Widget _cardTipo1() {
            return Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.photo_album, color: Colors.blue),
                    title: Text('Soy el titulo de este card'),
                    subtitle: Text('Aqui estamos con el subtitle del card que contenia nuestra pagina'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        child: Text('Cancelar'),
                        onPressed: () { },
                      ),
                      FlatButton(onPressed: () { }, 
                      child: Text('Aceptar')
                      )
                    ]
                  )
                ]
              )
            );
          }
          
          Widget  _cardTipo2() {
            final card = Container(
              // clipBehavior: Clip.antiAlias,

              child: Column(
                children: <Widget>[
                  FadeInImage(
                    placeholder: AssetImage('assets/original.gif'), 
                    image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2017/03/landscape-photography-tom-archer-2.jpg'),
                    fadeInDuration: Duration( milliseconds: 200 ),
                    height: 300.0,
                    fit: BoxFit.cover,
                  ),
                  // Image(
                  //   image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2017/03/landscape-photography-tom-archer-2.jpg')
                  // ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text('No tengo idea de que poner ')
                  )
                ]
              ),
            );

            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                    offset: Offset(2.0, 10.0)
                  )
                ]
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: card,
              ),
            );

          }
}