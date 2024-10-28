import 'package:injectable/injectable.dart';
import 'package:segment_analytics/client.dart';
import 'package:segment_analytics/state.dart';

@lazySingleton
class AnalyticsService {
  AnalyticsService() {
    _init();
  }

  void _init() {
    const segmentWriteKey = String.fromEnvironment('SEGMENT_WRITE_KEY');
    createClient(Configuration(segmentWriteKey));
  }
}
