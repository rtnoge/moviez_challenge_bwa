import 'package:flutter/material.dart';

class RateItem extends StatelessWidget {
  final int _index;
  final int _rate;

  const RateItem(this._index, this._rate, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      child: Image.asset(
        _index <= _rate
            ? 'assets/icon/star_active.png'
            : 'assets/icon/star_unactive.png',
        width: 18,
      ),
    );
  }
}
