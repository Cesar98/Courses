import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  String _email = '';
  String _passwd = '';
  String _date = '';
  List<String> _mainCarsList = [
    'Main Car',
    'Octane',
    'Fennec',
    'Dingo',
    'Dominus',
    'Scarab'
  ];
  String _selectedItem = 'Main Car';

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input fields'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        children: [
          _createInput(),
          Divider(),
          _createEmail(),
          Divider(),
          _createPasswd(),
          Divider(),
          _createDate(context),
          Divider(),
          _createDropdown(),
          Divider(),
          _createPerson(),
        ],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            counter: Text('Characters ${_name.length}'),
            hintText: 'Name',
            labelText: 'Name',
            suffixIcon: Icon(
              Icons.person,
              color: Colors.purple,
            ),
            icon: Icon(
              Icons.remove,
              color: Colors.purple,
            )),
        onChanged: (value) {
          _name = value;
          setState(() {});
        });
  }

  Widget _createEmail() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            counter: Text('example@example.com'),
            hintText: 'Email',
            labelText: 'Email',
            suffixIcon: Icon(
              Icons.alternate_email,
              color: Colors.purple,
            ),
            icon: Icon(
              Icons.remove,
              color: Colors.purple,
            )),
        onChanged: (value) {
          _email = value;
          setState(() {});
        });
  }

  Widget _createPasswd() {
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            counter: Text('N3f23#iq23Q'),
            hintText: 'Password',
            labelText: 'Password',
            suffixIcon: Icon(
              Icons.password,
              color: Colors.purple,
            ),
            icon: Icon(
              Icons.remove,
              color: Colors.purple,
            )),
        onChanged: (value) {
          _passwd = value;
          setState(() {});
        });
  }

  Widget _createDate(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          counter: Text('DD/MM/YYYY'),
          hintText: 'Born date',
          labelText: 'Born date',
          suffixIcon: Icon(
            Icons.calendar_today,
            color: Colors.purple,
          ),
          icon: Icon(
            Icons.remove,
            color: Colors.purple,
          )),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        locale: Locale('es', 'ES'),
        initialDate: new DateTime.now(),
        firstDate: new DateTime(1990),
        lastDate: new DateTime(2025));

    if (picked != null) {
      _date = picked.toString();
      setState(() {});
      _inputFieldDateController.text = _date;
    }
  }

  List<DropdownMenuItem<String>> getItemsList() {
    List<DropdownMenuItem<String>> list = [];
    _mainCarsList.forEach((car) {
      list.add(DropdownMenuItem(
        child: Text(car),
        value: car,
      ));
    });
    return list;
  }

  Widget _createDropdown() {
    return Row(
      children: [
        Icon(
          Icons.remove,
          color: Colors.purple,
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: DropdownButton(
            icon: Icon(
              Icons.car_repair,
              color: Colors.purple,
            ),
            borderRadius: BorderRadius.circular(10),
            isExpanded: true,
            value: _selectedItem,
            items: getItemsList(),
            onChanged: (value) {
              _selectedItem = value.toString();
              setState(() {});
            },
          ),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }

  Widget _createPerson() {
    return Column(
      textDirection: TextDirection.rtl,
      children: [
        ListTile(
          title: Text('Verification data'),
        ),
        Divider(),
        ListTile(
          title: Text('Are you: $_name'),
        ),
        Divider(),
        ListTile(
          title: Text('Is your email: $_email'),
        ),
        Divider(),
        ListTile(
          title: Text('Is it your password: $_passwd'),
        ),
        Divider(),
        ListTile(
          title: Text('Were you born at: $_date'),
        ),
        Divider(),
        ListTile(
          title: Text('Your main car is: $_selectedItem'),
        ),
        Divider(),
      ],
    );
  }
}
