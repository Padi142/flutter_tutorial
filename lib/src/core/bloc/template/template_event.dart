part of 'template_bloc.dart';

abstract class TemplateEvent extends Equatable {
  const TemplateEvent();

  @override
  List<Object> get props => [];
}

class LoadData extends TemplateEvent {
  const LoadData();

  @override
  List<Object> get props => [];
}
