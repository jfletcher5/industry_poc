import '/backend/backend.dart';
import '/components/content_body_alerts/content_body_alerts_widget.dart';
import '/components/content_body_dashboard/content_body_dashboard_widget.dart';
import '/components/content_body_reports/content_body_reports_widget.dart';
import '/components/page_header_desktop/page_header_desktop_widget.dart';
import '/components/page_header_mobile/page_header_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'app_widget.dart' show AppWidget;
import 'package:flutter/material.dart';

class AppModel extends FlutterFlowModel<AppWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in app widget.
  UsersRecord? userDetails;
  // Stores action output result for [Firestore Query - Query a collection] action in app widget.
  FeatureFlagsRecord? systemFlags;
  // Model for pageHeader_Desktop component.
  late PageHeaderDesktopModel pageHeaderDesktopModel;
  // Model for pageHeader_Mobile component.
  late PageHeaderMobileModel pageHeaderMobileModel;
  // Model for ContentBody_Dashboard component.
  late ContentBodyDashboardModel contentBodyDashboardModel;
  // Model for ContentBody_Reports component.
  late ContentBodyReportsModel contentBodyReportsModel;
  // Model for ContentBody_Alerts component.
  late ContentBodyAlertsModel contentBodyAlertsModel;

  @override
  void initState(BuildContext context) {
    pageHeaderDesktopModel =
        createModel(context, () => PageHeaderDesktopModel());
    pageHeaderMobileModel = createModel(context, () => PageHeaderMobileModel());
    contentBodyDashboardModel =
        createModel(context, () => ContentBodyDashboardModel());
    contentBodyReportsModel =
        createModel(context, () => ContentBodyReportsModel());
    contentBodyAlertsModel =
        createModel(context, () => ContentBodyAlertsModel());
  }

  @override
  void dispose() {
    pageHeaderDesktopModel.dispose();
    pageHeaderMobileModel.dispose();
    contentBodyDashboardModel.dispose();
    contentBodyReportsModel.dispose();
    contentBodyAlertsModel.dispose();
  }
}
