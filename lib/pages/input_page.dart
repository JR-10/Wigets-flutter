import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // declaracion de variables
  String nombre = '';
  String email = '';
  String password = '';
  String fecha = '';
  List<String> lenguajes = [
    'Angular',
    'Flutter',
    'Java',
    'Ionic',
    'React',
  ];
  String _lenguajeSeleccionado = 'Flutter';
  bool checkBloqueado = false;

  TextEditingController _inputFieldDateController =
      new TextEditingController(); // controlador fechas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*
      appBar: AppBar(
        title: Text('Pagina'),
      ),
      */
        body: SingleChildScrollView(
      child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            color: Color(0xFFC41A3B),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        top: 0.0, bottom: 0.0, left: 15.0, right: 0.0),
                    child: Text('Formulario',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                        ))),
                SizedBox(
                  height: 30.0,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35.0),
                            topRight: Radius.circular(100.0))),
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: MediaQuery.of(context).size.height /
                                3.5, // controla desbordamiento
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(top: 60.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              height: 45.0,
                              padding: EdgeInsets.only(
                                  top: 0.0,
                                  bottom: 0.0,
                                  left: 16.0,
                                  right: 16.0),
                              /*decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15.0)),
                                    color: Color(0xFFFBE06E)), */
                              child: ListView(
                                children: <Widget>[
                                  Divider(),
                                  _inputTextName(),
                                  Divider(),
                                  _inputTextEmail(),
                                  Divider(),
                                  _inputTextPassword(),
                                  Divider(),
                                  _inputFecha(),
                                  Divider(),
                                  _inputDropdown(),
                                  Divider(),
                                  _resultadoDesarrollador(),
                                  Divider(),
                                  _checkBox(),
                                  Divider(),
                                  _switch(),
                                  Divider(),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    )

        /*
      ListView(
        children: <Widget>[
          Divider(),
          _inputTextName(),
          Divider(),
          _inputTextEmail(),
          Divider(),
          _inputTextPassword(),
          Divider(),
          _inputFecha(),
          Divider(),
          _inputDropdown(),
          Divider(),
          _resultadoDesarrollador(),
          Divider(),
          _checkBox(),
          Divider(),
          _switch(),
          Divider(),
        ],
      ),
      */
        );
  }

  // ====== Widget Input  =======

  // Input Nombre
  Widget _inputTextName() {
    return TextField(
      cursorColor: Color(0xFFC41A3B),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: 'Nombre',
        hintStyle:
            TextStyle(fontStyle: FontStyle.italic, color: Color(0xFF1B1F32)),
        labelText: 'Nombre',
        // icon: Icon(Icons.ac_unit),
        suffixIcon: Icon(Icons.person),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(17.0)),
      ),
      onChanged: (value) {
        setState(() {
          nombre = value;
          print('El nombre es:  $nombre');
        });
      },
    );
  }

  // Input Email
  Widget _inputTextEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress, // valida el tipo de texto email
      decoration: InputDecoration(
        hintText: 'Email',
        labelText: 'Email',
        // icon: Icon(Icons.ac_unit),
        suffixIcon: Icon(Icons.ac_unit_rounded),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(17.0)),
      ),
      onChanged: (value) {
        setState(() {
          email = value;
          print('El email es:  $email');
        });
      },
    );
  }

  // Input Password
  Widget _inputTextPassword() {
    return TextField(
      obscureText: true, // validar visibilidad password
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
        //icon: Icon(Icons.lock),
        suffixIcon: Icon(Icons.remove_red_eye),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(17.0)),
      ),
      onChanged: (value) {
        setState(() {
          password = value;
          print('El password es:  $password');
        });
      },
    );
  }

  // fechas
  Widget _inputFecha() {
    return TextField(
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        hintText: 'Fecha',
        labelText: 'Fecha',
        // icon: Icon(Icons.calendar_today),
        suffixIcon: Icon(Icons.perm_contact_calendar),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(17.0)),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectFecha(context);
      },
    );
  }

  _selectFecha(BuildContext context) async {
    DateTime seleccionado = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2017),
      lastDate: new DateTime(2030),
    );

    if (seleccionado != null) {
      setState(() {
        fecha = seleccionado.year.toString() +
            '/' +
            seleccionado.month.toString() +
            '/' +
            seleccionado.day.toString();
        print('Valor de fecha: $fecha');
        _inputFieldDateController.text = fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> listaLenguajes = new List();
    lenguajes.forEach((iterador) {
      listaLenguajes
          .add(DropdownMenuItem(child: Text(iterador), value: iterador));
    });
    return listaLenguajes;
  }

  Widget _inputDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(
          width: 30.0,
        ),
        Expanded(
          child: DropdownButton(
              value: _lenguajeSeleccionado,
              items: getOpcionesDropdown(),
              onChanged: (value) {
                setState(() {
                  _lenguajeSeleccionado = value;
                });
              }),
        )
      ],
    );
  }

  Widget _resultadoDesarrollador() {
    return ListTile(
      title: Text('Desarrollador: $nombre'),
      subtitle: Text('Su Email es: $email'),
      trailing: Text(_lenguajeSeleccionado),
    );
  }

  Widget _checkBox() {
    return CheckboxListTile(
      title: Text('Check Prueba'),
      value: checkBloqueado,
      onChanged: (value) {
        setState(() {
          checkBloqueado = value;
        });
      },
    );
  }

  Widget _switch() {
    return SwitchListTile(
      title: Text('Switch Prueba'),
      value: checkBloqueado,
      onChanged: (value) {
        setState(() {
          checkBloqueado = value;
        });
      },
    );
  }
}
