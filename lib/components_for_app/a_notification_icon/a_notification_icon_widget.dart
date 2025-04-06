import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'a_notification_icon_model.dart';
export 'a_notification_icon_model.dart';

/// Prompt:
///
/// Icon Concept: Design a notification icon that combines the universal
/// notification bell with an agricultural element to represent updates
/// related to farming, sales, or orders.
///
/// Primary Elements:
///
/// Bell Icon: A standard notification bell to represent alerts or messages.
/// Agricultural Element: A leaf, wheat stalk, or plant integrated into or
/// next to the bell to symbolize farming, crops, or fresh produce.
/// Color Palette:
///
/// Main Color: Green tones (to represent agriculture and growth).
/// Secondary Colors: Earthy tones like brown or light yellow to maintain a
/// connection to nature and organic farming.
/// Accent Color: Use a soft gray or white for the bell to make it stand out.
/// Style and Shape:
///
/// Shape: Rounded, simple, and clean lines for easy recognition at small
/// sizes.
/// Design Style: Flat and minimalistic to match modern app aesthetics, with a
/// touch of nature.
/// Outline: Consider a thin border around the icon to enhance its visibility
/// when placed over various backgrounds.
/// Size & Visibility: The icon should be clear and easily visible in small
/// notifications on both iOS and Android devices. Focus on readability and
/// visibility at smaller sizes (24px, 48px).
///
/// Additional Feature (Optional):
///
/// Add a small dot or counter bubble on the bell (like a red badge) to
/// indicate the number of unread notifications.
class ANotificationIconWidget extends StatefulWidget {
  const ANotificationIconWidget({super.key});

  @override
  State<ANotificationIconWidget> createState() =>
      _ANotificationIconWidgetState();
}

class _ANotificationIconWidgetState extends State<ANotificationIconWidget> {
  late ANotificationIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ANotificationIconModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 97.9,
        height: 85.8,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.transparent,
              offset: Offset(0.0, 0.0),
              spreadRadius: 0.0,
            )
          ],
          borderRadius: BorderRadius.circular(30.0),
        ),
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            width: 36.0,
            height: 66.0,
            child: Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                Align(
                  alignment: AlignmentDirectional(0.5, 0.5),
                  child: Icon(
                    Icons.notifications_rounded,
                    color: Color(0xFF155190),
                    size: 32.0,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.85, 0.2),
                  child: Container(
                    width: 16.0,
                    height: 16.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF5252),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.5, 0.5),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'gg5hp93f' /* 3 */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.3, 0.7),
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Icon(
                        Icons.eco,
                        color: Color(0xFF8BC34A),
                        size: 16.0,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.7, 0.7),
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    child: Icon(
                      Icons.grass,
                      color: Color(0xFF8BC34A),
                      size: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
