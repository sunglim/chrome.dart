library harness_browser;

import 'package:unittest/html_enhanced_config.dart';
import 'package:unittest/unittest.dart';
import 'package:logging/logging.dart';
import 'package:js/js.dart' as js;

import 'package:chrome/chrome.dart';

part 'runtime_test.dart';

main() {
  Logger.root.level = Level.ALL;
  Logger.root.on.record.add((LogRecord r)=>print(r.message.toString()));

  groupSep = '.';
  useHtmlEnhancedConfiguration();

  new RuntimeTest().main();
}
