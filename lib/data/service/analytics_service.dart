import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:segment_analytics/analytics.dart';
import 'package:segment_analytics/client.dart';
import 'package:segment_analytics/flush_policies/count_flush_policy.dart';
import 'package:segment_analytics/state.dart';

@lazySingleton
class AnalyticsService {
  late final Analytics _analytics;

  AnalyticsService() {
    _init();
  }

  void _init() {
    const segmentWriteKey = String.fromEnvironment('SEGMENT_WRITE_KEY');
    _analytics = createClient(Configuration(
      segmentWriteKey,
      debug: true,
      trackApplicationLifecycleEvents: true,
      maxBatchSize: 10,
      flushPolicies: [
        CountFlushPolicy(10)
      ],
    ));
  }

  void track({required String event, Map<String, dynamic>? properties}) {
    unawaited(_analytics.track(event, properties: properties));
  }
}
