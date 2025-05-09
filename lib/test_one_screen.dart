import 'package:advanced_ecommerce/core/extensions/context_extensions.dart';
import 'package:advanced_ecommerce/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text('Test One'),
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
           context.pushName(AppRoutes.testTwo);
          },
          child: Text("Go to Test Two" , style: TextStyle(color: Colors.white),),
          
        ),
      ),
    );
  }
}
