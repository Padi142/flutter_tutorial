import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_app/src/core/models/todo_model.dart';

part 'template_state.freezed.dart';

@freezed
class TemplateState with _$TemplateState {
  const factory TemplateState.initial() = Initial;
  const factory TemplateState.loaded(List<TodoModel> todos) = Loaded;
}
