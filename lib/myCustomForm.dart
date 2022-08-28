import 'package:flutter/material.dart';
import './extensions.dart';
import './finish.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // debugShowCheckedModeBanner: false,
      backgroundColor: Colors.blue,
      body: Container(
        // color: Colors.amber,
        margin: EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
              validator: (value) {
                if (!value!.isValidName) {
                  return 'Please Enter a Valid Name';
                }
                return null;
              },
              decoration: InputDecoration(
                fillColor: Colors.grey,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                icon: Icon(Icons.person),
                hintText: 'First Name',
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              validator: (value) {
                if (!value!.isValidName) {
                  return 'Please Enter a Valid Name';
                }
                return null;
              },
              decoration: InputDecoration(
                fillColor: Colors.grey,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                icon: Icon(Icons.person),
                hintText: 'Second name',
              ),
            ),
            SizedBox(
              height: 8,
            ),
            // TextFormField(
            //   validator: (value) {
            //     if (value == null || value.isEmpty) {
            //       return 'Please Enter Some Text';
            //     }
            //     return null;
            //   },
            //   decoration: const InputDecoration(
            //     border: OutlineInputBorder(),
            //     labelText: 'Occupation',
            //   ),
            // ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              validator: (value) {
                if (!value!.isValidPhone) {
                  return 'Please Enter a Valid Phone Number';
                }
                return null;
              },
              decoration: InputDecoration(
                fillColor: Colors.grey,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                hintText: 'Phone Number',
                icon: Icon(
                  Icons.phone_outlined,
                ),
              ),
              maxLength: 112,
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 8.0,
            ),
            TextFormField(
              validator: (value) {
                if (!value!.isValidEmail) {
                  return 'Please Enter a Valid Email';
                }
                return null;
              },
              decoration: InputDecoration(
                fillColor: Colors.grey,
                filled: true,
                icon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                hintText: 'Please key in your email !!',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, minimumSize: Size.fromHeight(50)),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => Finisher()),
                    );
                  }
                },
                child: const Text('Submit'))
          ]),
        ),
      ),
    );
//
  }
}
