import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_app/src/core/bloc/template/template_bloc.dart';
import 'package:template_app/src/ui/views/main_page.dart';

class TemplateApp extends StatelessWidget {
  const TemplateApp({
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<TemplateBloc>(
            create: (BuildContext context) => TemplateBloc(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Json test",
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.grey,
            canvasColor: Colors.deepPurpleAccent,
          ),
          home: const MainPage(),
        ));
  }
}
