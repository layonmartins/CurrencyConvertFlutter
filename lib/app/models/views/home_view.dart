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
            const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
        child: Column(
          children: [
            Image.asset('assets/logo.png', width: 250, height: 250),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: SizedBox(
                    height: 56,
                    child: DropdownButton<String>(
                        isExpanded: true,
                        underline: Container(
                          height: 1,
                          color: Colors.amber,
                        ),
                        items: [
                          DropdownMenuItem(child: Text('Real'), value: "Real"),
                          DropdownMenuItem(
                              child: Text('Dolar'), value: "Dolar"),
                        ],
                        onChanged: (value) {}),
                  )),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber))),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            RaisedButton(
                color: Colors.amber, onPressed: () {}, child: Text('CONVERTER'))
          ],
        ),
      ),
    ));
  }
}
