import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'correct4_model.dart';
export 'correct4_model.dart';

class Correct4Widget extends StatefulWidget {
  const Correct4Widget({super.key});

  @override
  State<Correct4Widget> createState() => _Correct4WidgetState();
}

class _Correct4WidgetState extends State<Correct4Widget> {
  late Correct4Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Correct4Model());
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
            colors: [const Color(0xB546FF00), FlutterFlowTheme.of(context).primary],
            gradientDirection: GradientDirection.ltr,
            gradientType: GradientType.linear,
          ),
        ),
        FFButtonWidget(
          onPressed: () async {
            context.pushNamed('HomePage');
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
  }
}
