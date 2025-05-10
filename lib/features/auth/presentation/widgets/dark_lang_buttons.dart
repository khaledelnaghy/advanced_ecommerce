import 'package:advanced_ecommerce/core/common/animations/animate_do.dart';
import 'package:advanced_ecommerce/core/common/widgets/custom_linear_button.dart';
import 'package:advanced_ecommerce/core/common/widgets/text_app.dart';
import 'package:advanced_ecommerce/core/extensions/context_extensions.dart';
import 'package:advanced_ecommerce/core/language/lang_keys.dart';
import 'package:advanced_ecommerce/core/style/fonts/font_weight_hepler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DarkLangButtons extends StatelessWidget {
  const DarkLangButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Dark mode Button
        CustomFadeInRight(
          duration: 400,
          child: CustomLinearButton(
            onPressed: () {},
            child: const Icon(
              Icons.light_mode_rounded,
              color: Colors.white,
            ),
          ),
        ),
        //Lang Button
        CustomFadeInLeft(
          duration: 400,
          child: CustomLinearButton(
            height: 44.h,
            width: 100.w,
            onPressed: () {},
            child: TextApp(
              text: context.translate(LangKeys.language),
              theme: context.textStyle
                  .copyWith(fontSize: 16.sp, fontWeight: FontWeightHepler.bold),
            ),
          ),
        ),
      ],
    );
  }
}
