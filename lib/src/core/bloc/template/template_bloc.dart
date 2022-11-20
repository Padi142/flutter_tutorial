import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:template_app/src/core/bloc/template/template_state.dart';
import 'package:template_app/src/core/models/todo_model.dart';
import 'package:template_app/src/core/provider/template_provider.dart';

part 'template_event.dart';

class TemplateBloc extends Bloc<TemplateEvent, TemplateState> {
  TemplateBloc() : super(const TemplateState.initial()) {
    on<LoadData>(_onTemplateEvent);
  }
  TemplateProvider templateProvider = TemplateProvider();

  _onTemplateEvent(LoadData event, Emitter<TemplateState> emit) async {
    List<TodoModel> data = await templateProvider.getData();

    emit(TemplateState.loaded(data));
  }
}
