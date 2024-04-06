import '/flutter_flow/flutter_flow_util.dart';
import '/pages/brake_down_level_picker/brake_down_level_picker_widget.dart';
import 'create_task_page_widget.dart' show CreateTaskPageWidget;
import 'package:flutter/material.dart';

class CreateTaskPageModel extends FlutterFlowModel<CreateTaskPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for task widget.
  FocusNode? taskFocusNode;
  TextEditingController? taskController;
  String? Function(BuildContext, String?)? taskControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  DateTime? datePicked;
  // Model for BrakeDownLevelPicker component.
  late BrakeDownLevelPickerModel brakeDownLevelPickerModel;

  @override
  void initState(BuildContext context) {
    brakeDownLevelPickerModel =
        createModel(context, () => BrakeDownLevelPickerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    taskFocusNode?.dispose();
    taskController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();

    brakeDownLevelPickerModel.dispose();
  }
}
