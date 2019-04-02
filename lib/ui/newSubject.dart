import 'package:flutter/material.dart';

class NewSubject extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NewSubjectState();
  }
}

class NewSubjectState extends State {
  final _formKey = GlobalKey<FormState>();

  String subject = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("New Subject"),
        ),
        body: Form(
          key: _formKey,
          child: Center(
            child: ListView(children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Subject",
                ),
                keyboardType: TextInputType.text,
                onSaved: (value) => subject = value,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please fill subject";
                  }
                },
              ),
              RaisedButton(
                child: Text(
                  'Save',
                ),
                onPressed: () {
                  _formKey.currentState.save();

                  if (this._formKey.currentState.validate()) {
                    print(subject);
                  }
                },
              )
            ]),
          ),
        ));
  }
}
