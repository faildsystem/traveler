import 'package:flutter/material.dart';
import 'package:traveler/components/app_button.dart';
import 'package:traveler/components/app_text_field.dart';
import 'package:traveler/components/currency_card.dart';

class CurrencyConverterScreen extends StatefulWidget {
  const CurrencyConverterScreen({super.key, required this.isFromDrawer});

  final bool isFromDrawer;

  @override
  _CurrencyConverterScreenState createState() =>
      _CurrencyConverterScreenState();
}

class _CurrencyConverterScreenState extends State<CurrencyConverterScreen> {
  final TextEditingController _amountController = TextEditingController();
  double conversionRate = 0.70;
  double convertedAmount = 0.0;
  String currencyFrom = 'USD';
  String currencyTo = 'EUR';

  void _convertCurrency() {
    double amount = double.tryParse(_amountController.text) ?? 0.0;
    setState(() {
      convertedAmount = amount * conversionRate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: widget.isFromDrawer? AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        centerTitle: true,
      ): null,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CurrencyCard(
                    currencyName: 'USD',
                    currencyImage: 'assets/images/usa.png',
                  ),
                  Icon(Icons.swap_horiz, size: 35),
                  CurrencyCard(
                    currencyName: 'EUR',
                    currencyImage: 'assets/images/eur.png',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              AppTextField(
                controller: _amountController,
                hintText: '',
                obscureText: false,
                keyboardType: TextInputType.number,
                labelText: 'Enter amount in $currencyFrom',
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 95,
                decoration: BoxDecoration(
                  color: const Color(0xFF1BBA85),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '1 $currencyTo = $conversionRate $currencyFrom',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Poppins',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '${double.tryParse(_amountController.text) ?? 0.0} $currencyFrom = ${convertedAmount.toStringAsFixed(2)} $currencyTo',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fee',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Amount converted',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Rate',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        '3.43 USD',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '${double.tryParse(_amountController.text) ?? 0.0}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        '0.70',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 70),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: AppButton(
                  onPressed: _convertCurrency,
                  text: 'Convert',
                  borderRadius: 10,
                  enabled: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
