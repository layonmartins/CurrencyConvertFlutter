import 'package:conversor_de_moedas/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 20),
        child: Column(
          children: [
            Image.asset('assets/logo.png', width: 250, height: 250),
            SizedBox(height: 10),
            CurrencyBox(),
            SizedBox(height: 10),
            CurrencyBox(),
            SizedBox(height: 10),
            RaisedButton(
                color: Colors.amber, onPressed: () {}, child: Text('CONVERTER'))
          ],
        ),
      ),
    ));
  }
}
