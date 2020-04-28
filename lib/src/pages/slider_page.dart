import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Slider')
       ),
       body: Container(
         padding: EdgeInsets.only(top: 50.0),
         child: Column(
           children: <Widget>[
             _crearSlider(),
             _checkBox(),
             _crearSwith(),
             Expanded(
               child: _crearImagen()
             ),
           ]
         )
       ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamano de la Imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0, 
      onChanged: (_bloquearCheck) ? null : (valor){
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }
 
  Widget _checkBox() {
    // return Checkbox(
    //   value: _bloquearCheck, 
    //   onChanged:(valor){
    //     setState(() {
    //       _bloquearCheck = valor;
    //     });
    //   }
    // );

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck, 
      onChanged:(valor){
        setState(() {
          _bloquearCheck = valor;
        });
      }
    );
  }

  Widget _crearSwith(){
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged:(valor){
        setState(() {
          _bloquearCheck = valor;
        });
      }
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/1eecfc59-5bed-4aea-a70c-0bd48c91697f/d6tqouv-294f3efd-8d83-49bb-a208-6566f4a6ee7a.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzFlZWNmYzU5LTViZWQtNGFlYS1hNzBjLTBiZDQ4YzkxNjk3ZlwvZDZ0cW91di0yOTRmM2VmZC04ZDgzLTQ5YmItYTIwOC02NTY2ZjRhNmVlN2EuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.BCQ19Gu1pJdQRSUnYlRLWAemT_ksEkJsRAfJzncq1RI'),
      width: _valorSlider,
      fit: BoxFit.contain,

    );
  }

}