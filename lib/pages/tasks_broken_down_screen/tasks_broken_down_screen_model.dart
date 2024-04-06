import '/components/subtask_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tasks_broken_down_screen_widget.dart' show TasksBrokenDownScreenWidget;
import 'package:flutter/material.dart';

class TasksBrokenDownScreenModel
    extends FlutterFlowModel<TasksBrokenDownScreenWidget> {
  ///  Local state fields for this page.

  bool isEditingEnabled = false;

  int selectedItemId = -1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for Subtask dynamic component.
  late FlutterFlowDynamicModels<SubtaskModel> subtaskModels1;

  @override
  void initState(BuildContext context) {
    subtaskModels1 = FlutterFlowDynamicModels(() => SubtaskModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    subtaskModels1.dispose();
  }
}
