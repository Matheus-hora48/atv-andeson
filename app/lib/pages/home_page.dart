import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  var res;

  _sum(String num1, String num2) {
    final res = double.parse(num1) + double.parse(num2);
    setState(() {});
    return res;
  }

  _sub(String num1, String num2) {
    final res = double.parse(num1) - double.parse(num2);
    setState(() {});
    return res;
  }

  _mul(String num1, String num2) {
    final res = double.parse(num1) * double.parse(num2);
    setState(() {});
    return res;
  }

  _div(String num1, String num2) {
    final res = double.parse(num1) / double.parse(num2);
    setState(() {});
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  res == null
                      ? 'Insira os valores nos campos a baixo'
                      : 'Resultado: $res',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _num1Controller,
                        decoration: const InputDecoration(
                          label: Text('Primeiro valor'),
                          border: OutlineInputBorder(),
                        ),
                        validator: (String? v) {
                          if (v == null || v.isEmpty) {
                            return 'Digite um valor';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: _num2Controller,
                        decoration: const InputDecoration(
                          label: Text('Segundo valor'),
                          border: OutlineInputBorder(),
                        ),
                        validator: (String? v) {
                          if (v == null || v.isEmpty) {
                            return 'Digite um valor';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        if (_formKey.currentState!.validate()) {
                          res = _sum(
                            _num1Controller.text,
                            _num2Controller.text,
                          );
                        }
                      },
                      child: const Text('Soma'),
                    ),
                    TextButton(
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        if (_formKey.currentState!.validate()) {
                          res = _sub(
                            _num1Controller.text,
                            _num2Controller.text,
                          );
                        }
                      },
                      child: const Text('Subtração'),
                    ),
                    TextButton(
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        if (_formKey.currentState!.validate()) {
                          res = _mul(
                            _num1Controller.text,
                            _num2Controller.text,
                          );
                        }
                      },
                      child: const Text('Multplicação'),
                    ),
                    TextButton(
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        if (_formKey.currentState!.validate()) {
                          res = _div(
                            _num1Controller.text,
                            _num2Controller.text,
                          );
                        }
                      },
                      child: const Text('Divisão'),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    _num1Controller.text = '';
                    _num2Controller.text = '';
                    res = null;
                    setState(() {});
                  },
                  child: const Text('Limpar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
