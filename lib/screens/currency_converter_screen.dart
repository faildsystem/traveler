import 'package:flutter/material.dart';

class CurrencyConverterScreen extends StatefulWidget {
  const CurrencyConverterScreen({super.key});

  @override
  State<CurrencyConverterScreen> createState() =>
      _CurrencyConverterScreenState();
}

class _CurrencyConverterScreenState extends State<CurrencyConverterScreen> {
  final TextEditingController _amountController = TextEditingController();
  String _fromCurrency = 'USD';
  String _toCurrency = 'EUR';
  double _result = 0.0;

  final Map<String, double> _exchangeRates = {
    'USD_EUR': 0.85,
    'EUR_USD': 1.18,
    'USD_GBP': 0.75,
    'GBP_USD': 1.33,
    // Add more rates as needed
  };

  void _convertCurrency() {
    double amount = double.tryParse(_amountController.text) ?? 0;
    String conversionKey = '${_fromCurrency}_${_toCurrency}';
    double rate = _exchangeRates[conversionKey] ?? 1.0;

    setState(() {
      _result = amount * rate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter amount',
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                  value: _fromCurrency,
                  onChanged: (value) {
                    setState(() {
                      _fromCurrency = value!;
                    });
                  },
                  items: ['USD', 'EUR', 'GBP'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                Icon(Icons.swap_horiz),
                DropdownButton<String>(
                  value: _toCurrency,
                  onChanged: (value) {
                    setState(() {
                      _toCurrency = value!;
                    });
                  },
                  items: ['USD', 'EUR', 'GBP'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _convertCurrency,
              child: Text('Convert'),
            ),
            SizedBox(height: 16),
            Text(
              'Converted Amount: $_result $_toCurrency',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
