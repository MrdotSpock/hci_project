import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'brake_down_level_picker_model.dart';
export 'brake_down_level_picker_model.dart';

class BrakeDownLevelPickerWidget extends StatefulWidget {
  const BrakeDownLevelPickerWidget({super.key});

  @override
  State<BrakeDownLevelPickerWidget> createState() =>
      _BrakeDownLevelPickerWidgetState();
}

class _BrakeDownLevelPickerWidgetState
    extends State<BrakeDownLevelPickerWidget> {
  late BrakeDownLevelPickerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BrakeDownLevelPickerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      onRatingUpdate: (newValue) =>
          setState(() => _model.ratingBarValue = newValue),
      itemBuilder: (context, index) => Icon(
        Icons.star_rounded,
        color: FlutterFlowTheme.of(context).secondary,
      ),
      direction: Axis.horizontal,
      initialRating: _model.ratingBarValue ??= 1.0,
      unratedColor: FlutterFlowTheme.of(context).alternate,
      itemCount: 3,
      itemSize: 40.0,
      glowColor: FlutterFlowTheme.of(context).secondary,
    );
  }
}
