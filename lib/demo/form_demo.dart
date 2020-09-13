import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ), 
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RegisterDemo(),
            ],
          ),
        ),
        ),
    );
  }
}

class RegisterDemo extends StatefulWidget {
  @override
  _RegisterDemoState createState() => _RegisterDemoState();
}

class _RegisterDemoState extends State<RegisterDemo> {

  final _registerFormKey = GlobalKey<FormState>();
  String username, password;

  bool _autovalidate = false;

  void _submitRegisterForm() {

    if (_registerFormKey.currentState.validate()) {
      _registerFormKey.currentState.save();

      debugPrint('username: $username');
      debugPrint('password: $password');
    } else {
      setState(() {
        _autovalidate = true;
      });
    }
    
  }

  String validateUsername(value) {
    if (value.isEmpty) {
        return 'name is empty';
    }
    return null;
  }

  String validatePasssword(value) {
      if (value.isEmpty) {
          return 'password is empty';
      }
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        key: _registerFormKey,

        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'username',
              helperText: '',
            ),
            onSaved: (value) {
              username = value;
            },
            validator: validateUsername,
            autovalidate: _autovalidate,
          ),
           TextFormField(
             obscureText: true, //密文
            decoration: InputDecoration(
              labelText: 'password',
              helperText: '',

            ),
            onSaved: (value) {
              password = value;
            },
            validator: validatePasssword,
            autovalidate: _autovalidate,
          ),
          SizedBox(height: 32.0),
          Container(
            width: double.infinity,
            child: RaisedButton(
              onPressed: _submitRegisterForm,
              color: Theme.of(context).accentColor,
              child: Text('Register', style: TextStyle(color: Colors.white)),
              elevation: 0.0,
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  final _textController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _textController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textController.addListener(() {
      debugPrint('input: ${_textController.text}');
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textController,
      // onChanged: (value) {
      //   debugPrint('changed: $value');
      // },
      onSubmitted: (value) {
        debugPrint('submitt: $value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'title',
        hintText: 'sssssss',
        border: OutlineInputBorder(),
        filled: true,
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}