import '/flutter_flow/flutter_flow_util.dart';
import 'v_i_p_badge_widget.dart' show VIPBadgeWidget;
import 'package:flutter/material.dart';

class VIPBadgeModel extends FlutterFlowModel<VIPBadgeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
