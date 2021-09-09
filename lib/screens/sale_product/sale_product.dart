import 'package:flutter/material.dart';

class SaleProduct extends StatefulWidget {
  const SaleProduct({Key? key}) : super(key: key);
  static const String routeName = '/SaleProduct';
  @override
  _SaleProductState createState() => _SaleProductState();
}

class _SaleProductState extends State<SaleProduct> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Sale Product'),
      ),
    );
  }
}
