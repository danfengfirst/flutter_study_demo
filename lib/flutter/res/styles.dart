import 'package:flutter/material.dart';
import 'res_index.dart';
class Styles{
  static const TextStyle textStyle_app_title=TextStyle(
    color: Colours.color_white,
    // ignore: const_constructor_param_type_mismatch
    fontSize: Dimens.sp16,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal

  );
  static const TextStyle textStyle_normal1=TextStyle(
      color: Colours.color_2F2F2F,
      // ignore: const_constructor_param_type_mismatch
      fontSize: Dimens.sp16,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal
  );
  static const TextStyle textStyle_normal2=TextStyle(
      color: Colours.color_white,
      // ignore: const_constructor_param_type_mismatch
      fontSize: Dimens.sp16,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal
  );

}

class Decorations {
  static Decoration bottom = BoxDecoration(
      border: Border(bottom: BorderSide(width: 0.33, color: Colours.color_726CC2)));
}


class Gap{
  static Widget hGap5=new SizedBox(width: Dimens.dp5);
  static Widget vGap5=new SizedBox(height: Dimens.dp5);
}