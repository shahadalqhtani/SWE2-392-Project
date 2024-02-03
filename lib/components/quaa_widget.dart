import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'quaa_model.dart';
export 'quaa_model.dart';

class QuaaWidget extends StatefulWidget {
  const QuaaWidget({super.key});

  @override
  State<QuaaWidget> createState() => _QuaaWidgetState();
}

class _QuaaWidgetState extends State<QuaaWidget> {
  late QuaaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuaaModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
      child: Container(
        width: 380.0,
        height: 70.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          border: Border.all(
            color: FlutterFlowTheme.of(context).primary,
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 280.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Function',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 20.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: Theme(
                  data: ThemeData(
                    checkboxTheme: CheckboxThemeData(
                      visualDensity: VisualDensity.standard,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    unselectedWidgetColor: FlutterFlowTheme.of(context).primary,
                  ),
                  child: Checkbox(
                    value: _model.checkboxValue ??= false,
                    onChanged: (newValue) async {
                      setState(() => _model.checkboxValue = newValue!);
                    },
                    activeColor: FlutterFlowTheme.of(context).primary,
                    checkColor: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
