import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  String _email = '';
  String _pass =  '';
  String _date = '';
  TextEditingController _inputDateCtrl = new TextEditingController();
  List<String> _poderes = ['Puño bala', 'abocajarro', 'ataque rapido', 'proteccion'];
  String _powerSelected = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs text'),
      ),
      body: ListView(
        children: <Widget>[
          _inputWidget(),
          Divider(),
          _emailInputWidget(),
          Divider(),
          _passwordInputWidget(),
          Divider(),
          _datePickerInputWidget(context),
          Divider(),
          _dropDonwWidget(),
          Divider(),
          _createUser()
       ],
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      )
    );
  }

  Widget _inputWidget() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text('Letras: ${_name.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'solo es el nombre',
        suffixIcon: Icon(Icons.accessibility_new),
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
      ),
      onChanged: (value) {
        setState(() {
          this._name = value;
          print(value);
        });
      },
    );
  }

  Widget _emailInputWidget() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
        hintText: 'Email',
        helperText: 'capture el email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
        labelText: 'Email'
      ),
      onChanged: (value) {
        setState(() {
          this._email = value;
        });
      },
    );
  }

  Widget _passwordInputWidget() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
        hintText: 'Password',
        helperText: 'capture el password',
        suffixIcon: Icon(Icons.lock),
        icon: Icon(Icons.lock),
        labelText: 'Password'
      ),
      onChanged: (value) {
        setState(() {
          this._pass = value;
        });
      },
    );
  }

  Widget _datePickerInputWidget(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputDateCtrl,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),),
        hintText: 'Fecha',
        helperText: 'Seleccione la fecha',
        suffixIcon: Icon(Icons.date_range),
        icon: Icon(Icons.data_usage),
        labelText: 'Fecha'
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
      locale: Locale('es', 'ES'),
    );

    if (picked != null) {
      setState(() {
        this._date = picked.toString();
        this._inputDateCtrl.text = _date;
      });
    }
  }

  List<DropdownMenuItem<String>> _getPowersDropdown() {
    List<DropdownMenuItem<String>> lista =new List();
    this._poderes.forEach((po) {
      lista.add(
        DropdownMenuItem(child: Text(po), value: po,)
      );
    });

    return lista;
  }

  Widget _dropDonwWidget() {
    return Row (
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
        Expanded( 
          child: DropdownButton(
                  items: _getPowersDropdown(),
                  value: _powerSelected,
                  onChanged: (opt){
                  print(opt);
                  setState(() {
                    this._powerSelected = opt;
                  });
                }),
        )
      
            
      ],
    );

  }

  Widget _createUser() {
    return Container(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Nuevo usuario: $_name'),
            trailing: Text(this._powerSelected),
          ),
          ListTile(
            title: Text('Correo: $_email'),
          ),
          ListTile(
            title: Text('Dete: $_date'),
          ),
        ],
      ),
    );
  }
}