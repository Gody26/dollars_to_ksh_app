import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.solid,
        color: Colors.black,
        width: 1,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.all(Radius.circular(60.0)),
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Currency Converter'),
          centerTitle: true,
          titleTextStyle: const TextStyle(color: Colors.green),
        ),
        backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'KSH: $result',
                style: const TextStyle(
                  color: Color.fromARGB(255, 58, 216, 66),
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: TextField(
                  controller: textEditingController,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Enter The Amount',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.green,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text) * 10;
                    });
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.green,
                    backgroundColor: Colors.black45,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Icon(Icons.money),
                ),
              ),
            ],
          ),
        ));
  }
}
