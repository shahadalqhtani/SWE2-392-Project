import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'correct2_model.dart';
export 'correct2_model.dart';

class Correct2Widget extends StatefulWidget {
  const Correct2Widget({
    super.key,
    required this.name,
  });

  final SubjectsRecord? name;

  @override
  State<Correct2Widget> createState() => _Correct2WidgetState();
}

class _Correct2WidgetState extends State<Correct2Widget> {
  late Correct2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Correct2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<SubjectsRecord>>(
      stream: querySubjectsRecord(
        queryBuilder: (subjectsRecord) => subjectsRecord.where(
          'names',
          isEqualTo: widget.name?.names,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return const Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color(0xFF3963EF),
                ),
              ),
            ),
          );
        }
        List<SubjectsRecord> columnSubjectsRecordList = snapshot.data!;
        final columnSubjectsRecord = columnSubjectsRecordList.isNotEmpty
            ? columnSubjectsRecordList.first
            : null;
        return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Lottie.asset(
                'assets/lottie_animations/Animation_-_1706959512932.json',
                width: 150.0,
                height: 130.0,
                fit: BoxFit.cover,
                frameRate: FrameRate(30.0),
                animate: true,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: GradientText(
                'Excellent',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      fontSize: 50.0,
                    ),
                colors: [
                  const Color(0xB546FF00),
                  FlutterFlowTheme.of(context).primary
                ],
                gradientDirection: GradientDirection.ltr,
                gradientType: GradientType.linear,
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed(
                  'Quiz3',
                  queryParameters: {
                    'naa': serializeParam(
                      widget.name,
                      ParamType.Document,
                    ),
                  }.withoutNulls,
                  extra: <String, dynamic>{
                    'naa': widget.name,
                  },
                );
              },
              text: 'Next!',
              options: FFButtonOptions(
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: const Color(0xB546FF00),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ],
        );
      },
    );
  }
}
