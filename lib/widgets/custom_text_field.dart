import 'package:flutter/material.dart';
import 'package:food_delivery/constants/color_constants.dart';
import 'package:food_delivery/utils/AppHelper.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    @required String hintText,
    @required bool isPassword,
    @required TextInputAction textInputAction,
    Key key,
  })
      : _hintText = hintText,
        _isPassword = isPassword,
        _textInputAction = textInputAction,
        super(key: key);

  final String _hintText;
  final bool _isPassword;
  final TextInputAction _textInputAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: ShapeDecoration(
          color: AppColor.placeholderBg, shape: StadiumBorder()),
      child: TextField(
        obscureText: _isPassword,
        textAlign: TextAlign.center,
        textInputAction: _textInputAction,
        textCapitalization: TextCapitalization.sentences,
        style: Helper
            .getTheme(context)
            .bodyText2,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: _hintText,
            hintStyle: TextStyle(color: AppColor.placeholder)),
      ),
    );
  }
}