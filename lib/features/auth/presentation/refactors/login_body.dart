import 'package:advanced_ecommerce/core/common/animations/animate_do.dart';
import 'package:advanced_ecommerce/core/common/widgets/text_app.dart';
import 'package:advanced_ecommerce/core/extensions/context_extensions.dart';
import 'package:advanced_ecommerce/core/language/lang_keys.dart';
import 'package:advanced_ecommerce/core/style/fonts/font_weight_hepler.dart';
import 'package:advanced_ecommerce/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:advanced_ecommerce/features/auth/presentation/widgets/dark_lang_buttons.dart';
import 'package:advanced_ecommerce/features/auth/presentation/widgets/login/login_button.dart';
import 'package:advanced_ecommerce/features/auth/presentation/widgets/login/login_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //Dark Mode and Language
            const DarkLangButtons(),
            SizedBox(
              height: 50.h,
            ),
            //welcome Info
            AuthTitleInfo(
              title: context.translate(LangKeys.login),
              description: context.translate(LangKeys.welcome),
            ),
            SizedBox(
              height: 30.h,
            ),
            // Login TextField

            const LoginTextField(),
            SizedBox(
              height: 30.h,
            ),
            // Login Button
            const LoginButton(),

            SizedBox(
              height: 30.h,
            ),
            // Go to sign up Screen
            CustomFadeInDown(
              duration: 100,
              child: TextApp(
                text: context.translate(LangKeys.createAccount),
                theme: context.textStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeightHepler.bold,
                    color: context.color.bluePinkLight),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
