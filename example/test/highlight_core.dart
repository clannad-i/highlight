// ignore: avoid_relative_lib_imports
import '../../lib/highlight.dart' show highlight;

// ignore: avoid_relative_lib_imports
import '../../lib/languages/dart.dart';

void main() {
  var source = '''main() {
  print("Hello, World!");
}
''';

  highlight.registerLanguage('dart', dart);

  var result = highlight.parse(source, language: 'dart');
  var html = result.toHtml();
  print(html); // HTML string
}
