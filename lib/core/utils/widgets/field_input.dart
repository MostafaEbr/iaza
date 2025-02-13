import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:investment/core/utils/colors/app_color.dart';

import '../styles/app_fonts.dart';


class InputField extends StatelessWidget {
  final String header ;
  final String? hint ;
  final String? error ;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final TextEditingController textEditingController ;
  final bool isRequired;
  final AutovalidateMode? autoValidateMode;
  final TextInputType? keyboardType;
  final Widget? prefixWidget;
  final bool? isEnabled;
  final String? Function(String?)? validator;
  const InputField({super.key,this.isEnabled, required this.header, this.isRequired=false, required this.textEditingController,this.validator,this.error,this.hint, this.inputFormatters, this.textInputAction, this.keyboardType, this.autoValidateMode, this.prefixWidget});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      cursorHeight: 16,
      autovalidateMode:autoValidateMode ,
      inputFormatters: inputFormatters,
      enabled: isEnabled,
      textInputAction:textInputAction,
      validator:validator,
        keyboardType:keyboardType,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 8,bottom: 4,left: 8,right: 8),
        errorText: error,
        hintText: hint,
          floatingLabelBehavior:FloatingLabelBehavior.always,
           hintStyle: TextStyle(
             fontSize: 12,
             fontWeight: FontWeight.w400
           ),

          prefixIcon:prefixWidget ,
      errorStyle: TextStyle(
        fontFamily: AppFonts.appFamilyInter,
        fontSize: 12,
        height: 1,
        fontWeight: FontWeight.w400
      ),

      ),
      style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 14,color: null),
    );
  }
}
