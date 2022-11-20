import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_app/src/core/bloc/template/template_bloc.dart';
import 'package:template_app/src/core/bloc/template/template_state.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<TemplateBloc>(context).add(const LoadData());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body:
          BlocBuilder<TemplateBloc, TemplateState>(builder: (context, state) {
        return state.maybeWhen(loaded: (todos) {
          return ListView.builder(itemBuilder: ((context, index) {
            return ListTile(
              title: Text(todos[index].title),
            );
          }));
        }, orElse: () {
          return CircularProgressIndicator();
        });
      })),
    );
  }
}
