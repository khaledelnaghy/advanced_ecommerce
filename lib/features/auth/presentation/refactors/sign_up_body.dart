import 'package:advanced_ecommerce/core/common/animations/animate_do.dart';
import 'package:advanced_ecommerce/core/common/widgets/text_app.dart';
import 'package:advanced_ecommerce/core/extensions/context_extensions.dart';
import 'package:advanced_ecommerce/core/language/lang_keys.dart';
import 'package:advanced_ecommerce/core/routes/app_routes.dart';
import 'package:advanced_ecommerce/core/style/fonts/font_weight_hepler.dart';
import 'package:advanced_ecommerce/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:advanced_ecommerce/features/auth/presentation/widgets/dark_lang_buttons.dart';
import 'package:advanced_ecommerce/features/auth/presentation/widgets/login/login_button.dart';
import 'package:advanced_ecommerce/features/auth/presentation/widgets/login/login_text_field.dart';
import 'package:advanced_ecommerce/features/auth/presentation/widgets/sign_up/sign_up_button.dart';
import 'package:advanced_ecommerce/features/auth/presentation/widgets/sign_up/sign_up_text_field.dart';
import 'package:advanced_ecommerce/features/auth/presentation/widgets/sign_up/user_avatar_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

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
              height: 25.h,
            ),
            //welcome Info
            AuthTitleInfo(
              title: context.translate(LangKeys.signUp),
              description: context.translate(LangKeys.signUpWelcome),
            ),

            SizedBox(
              height: 10.h,
            ),
            // User Avatar Image
            const UserAvatarImage(),
            SizedBox(
              height: 13.h,
            ),
            // Sign Up TextField

            const SignUpTextField(),
            SizedBox(
              height: 23.h,
            ),
            // Sign Up Button
            const SignUpButton(),
            SizedBox(
              height: 10.h,
            ),
            // Go to login Screen
            CustomFadeInDown(
              duration: 400,
              child: TextButton(
                onPressed: () {
                  context.pushReplacementNamed(AppRoutes.login);
                },
                child: TextApp(
                  text: context.translate(LangKeys.youHaveAccount),
                  theme: context.textStyle.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeightHepler.bold,
                      color: context.color.bluePinkLight),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
