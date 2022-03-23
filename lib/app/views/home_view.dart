import 'package:conversor_de_moedas/app/components/currency_box.dart';
import 'package:conversor_de_moedas/app/components/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();

  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText, fromText);
  }

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
            CurrencyBox(
                items: homeController.currencies!,
                selectedItem: homeController.toCurrency!,
                controller: toText,
                onChanged: (model) {
                  setState(() {
                    homeController.toCurrency = model;
                  });
                }),
            SizedBox(height: 10),
            CurrencyBox(
                items: homeController.currencies!,
                selectedItem: homeController.fromCurrency!,
                controller: fromText,
                onChanged: (model) {
                  setState(() {
                    homeController.fromCurrency = model;
                  });
                }),
            SizedBox(height: 10),
            RaisedButton(
                color: Colors.amber,
                onPressed: () {
                  homeController.convert();
                },
                child: Text('CONVERTER'))
          ],
        ),
      ),
    ));
  }
}
