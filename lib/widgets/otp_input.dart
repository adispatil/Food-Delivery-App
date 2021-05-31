import 'package:flutter/material.dart';
import '../constants/color_constants.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({Key key, @required bool first, @required bool last})
      : _first = first,
        _last = last,
        super(key: key);
  final bool _first;
  final bool _last;


  @override
  Widget build(BuildContext context) {
    TextEditingController code;
    return Container(
      width: 60,
      height: 60,
      decoration: ShapeDecoration(
        color: AppColor.placeholderBg,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Stack(
        children: <Widget>[
          TextField(
            style: TextStyle(fontSize: 30),
            controller: code,
            maxLength: 1,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            onChanged: (value) {
              if (value.length == 1 && _last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.length == 0 && _first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '*',
              hintStyle: TextStyle(color: AppColor.placeholder),
              counterText: '',
            ),
          ),
        ],
      ),
    );
  }
}
