import 'package:advanced_ecommerce/core/extensions/context_extensions.dart';
import 'package:advanced_ecommerce/core/language/lang_keys.dart';
import 'package:advanced_ecommerce/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('Test One'),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
              onPressed: (){
               context.pushName(AppRoutes.testTwo);
              },
              child: Text("Go to Test Two" , style: TextStyle(color: context.color.mainColor),),
              
            ),
          ),
          Text(context.translate(LangKeys.appName) , style: TextStyle(
            color: Colors.white , fontSize: 24
          ),),
        ],
      ),
    );
  }
}
