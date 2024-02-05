import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'mistake_model.dart';
export 'mistake_model.dart';

class MistakeWidget extends StatefulWidget {
  const MistakeWidget({
    super.key,
    this.title,
    this.bodyText,
  });

  final String? title;
  final String? bodyText;

  @override
  State<MistakeWidget> createState() => _MistakeWidgetState();
}

class _MistakeWidgetState extends State<MistakeWidget> {
  late MistakeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MistakeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Lottie.asset(
            'assets/lottie_animations/Animation_-_1706960274093.json',
            width: 150.0,
            height: 130.0,
            fit: BoxFit.cover,
            frameRate: FrameRate(30.0),
            animate: true,
          ),
        ),
        Text(
          'Incorrect answer',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Outfit',
                color: const Color(0xFFCC0000),
              ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 10.0),
          child: Text(
            'choose another option!',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Readex Pro',
                  color: const Color(0xFFFD0101),
                ),
          ),
        ),
        FFButtonWidget(
          onPressed: () async {
            context.safePop();
          },
          text: '',
          icon: const Icon(
            Icons.chevron_left_sharp,
            size: 15.0,
          ),
          options: FFButtonOptions(
            height: 40.0,
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: const Color(0xFF3E0C0C),
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Readex Pro',
                  color: Colors.white,
                ),
            elevation: 3.0,
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ],
    );
  }
}
