import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/utils/context_extension.dart';

class TravelTextField extends FormField<String> {
  final TextEditingController? textEditingController;
  final bool isPassword;
  final FocusNode? focusNode;

  TravelTextField({
    Key? key,
    String? initialValue,
    String? hint,
    String? title,
    Widget? action,
    Color? hintColor,
    Color? styleColor,
    int? maxLines = 1,
    int? maxLength,
    bool? mEnable,
    FormFieldSetter<String>? onSaved,
    this.isPassword = false,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    TextCapitalization? textCapitalization,
    this.textEditingController,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    FormFieldValidator<String>? validator,
    List<TextInputFormatter>? textInputFormatter,
    FloatingLabelBehavior floatingLabelBehavior = FloatingLabelBehavior.never,
    Color? backgroundColor,
    String? description,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Widget? iconShowPassword,
    Widget? iconHidePassword,
    bool enableTextError = true,
    EdgeInsets? contentPadding,
    bool? isRequired,
    TextStyle? titleStyle,
    VoidCallback? onTap,
    TextStyle? textStyle,
    double? height,
    Key? mKey,
    bool disableBorder = false,
    VoidCallback? onSuffixTap,
    this.focusNode,
    String? verifyText,
    VoidCallback? verifyField,
    ValueChanged<String>? onSubmitted,
  }) : super(
          key: key,
          initialValue: initialValue,
          onSaved: onSaved,
          validator: validator,
          builder: (stateFormField) {
            final state = stateFormField as CustomTextFieldState;

            return TextField(
              enabled: mEnable,
              maxLines: maxLines,
              maxLength: maxLength,
              keyboardType: keyboardType,
              focusNode: focusNode,
              cursorColor: styleColor ?? Colors.transparent,
              obscureText: state.isPassword,
              controller: state.textEditingController,
              onSubmitted: onSubmitted,
              obscuringCharacter: '*',
              textAlign: TextAlign.justify,
              onChanged: (value) {
                state.didChange(value);
                onChanged?.call(value);
              },
              style: state.context.textTheme.bodyText2?.copyWith(height: 1),
              decoration: const InputDecoration()
                  .applyDefaults(Theme.of(state.context).inputDecorationTheme)
                  .copyWith(
                    hintText: hint,
                    hintStyle: state.context.textTheme.bodyText2?.copyWith(
                      color: const Color(0xff39425D),
                      height: 1.0
                    ),
                    suffixIcon: suffixIcon,
                    prefixIcon: prefixIcon,
                    errorStyle: const TextStyle(
                        height: 0.01, color: Colors.transparent),
                    floatingLabelBehavior: floatingLabelBehavior,
                    counterStyle: state.context.textTheme.caption?.copyWith(
                      color: Colors.transparent,
                      height: double.minPositive,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    counterText: "",
                    contentPadding: contentPadding ??
                        const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                  ),
            );
          },
        );

  @override
  FormFieldState<String> createState() => CustomTextFieldState();
}

class CustomTextFieldState extends FormFieldState<String> {
  late bool isPassword;
  late FocusNode focusNode;
  late TextEditingController textEditingController;

  bool isFocus = false;

  @override
  TravelTextField get widget => super.widget as TravelTextField;

  @override
  void initState() {
    super.initState();
    isPassword = widget.isPassword;
    textEditingController = widget.textEditingController ??
        TextEditingController(text: widget.initialValue);
    focusNode = widget.focusNode ?? FocusNode();

    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        isFocus = false;
        setState(() {});
      } else {
        isFocus = true;
        setState(() {});
      }
    });

    textEditingController.addListener(() {
      setState(() {});
    });
  }
}
