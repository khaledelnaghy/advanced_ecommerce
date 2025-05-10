import 'package:advanced_ecommerce/core/common/animations/animate_do.dart';
import 'package:advanced_ecommerce/core/common/widgets/custom_text_field.dart';
import 'package:advanced_ecommerce/core/extensions/context_extensions.dart';
import 'package:advanced_ecommerce/core/language/lang_keys.dart';
import 'package:advanced_ecommerce/core/utils/app_regx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginTextField extends StatefulWidget {
  const LoginTextField({super.key});

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomFadeInRight(
            duration: 200,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(LangKeys.email),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (!AppRegex.isEmailValid("")) {
                  return context.translate(LangKeys.validEmail);
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 25.h),
          CustomFadeInRight(
            duration: 200,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(LangKeys.password),
              keyboardType: TextInputType.visiblePassword,
              obscureText: isShowPassword,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return context.translate(LangKeys.validPasswrod);
                }
                return null;
              },
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
                icon: isShowPassword
                    ? Icon(
                        Icons.visibility_off,
                        color: context.color.textColor,
                      )
                    : Icon(
                        Icons.visibility,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
