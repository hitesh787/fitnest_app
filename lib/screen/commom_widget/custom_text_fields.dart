import 'package:fitnest_app/provider/validator_provider.dart';
import 'package:fitnest_app/utils/assets.dart';
import 'package:fitnest_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class CustomTextFieldsWidget extends StatelessWidget {
  final String hintTitle;
  final String? icons;
  final Widget? suffixIcons;
  final String? Function(String?)? validator;
  final void Function(String?)? onChange;
  final TextEditingController? controller;

  const CustomTextFieldsWidget({
    super.key,
    required this.hintTitle,
    this.icons,
    this.suffixIcons,
    required this.onChange,
    required this.validator, this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColors.borderColor));
    return TextFormField(
      controller: controller,
      onChanged: onChange,
      validator: validator,
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.borderColor,
          border: const UnderlineInputBorder(borderSide: BorderSide.none),
          enabledBorder: border,
          disabledBorder: border,
          focusedBorder: border,
          hintText: hintTitle,
          hintStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.grey2Color),
          prefixIcon: Padding(
            padding:
                const EdgeInsets.only(right: 10, top: 15, bottom: 15, left: 10),
            child: Image.asset(
              icons ?? AppAssets.profile,
              height: 18,
              width: 18,
            ),
          ),
          suffixIcon: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
            child: suffixIcons,
          ),
      ),
    );
  }
}


class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key? key,
    required this.hintText,
    this.inputFormatters,
    this.validator,
    this.onChange,
  }) : super(key: key);
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final void Function(String?)? onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        inputFormatters: inputFormatters,
        validator: validator,
        decoration: InputDecoration(hintText: hintText),
        onChanged: onChange,
      ),
    );
  }
}