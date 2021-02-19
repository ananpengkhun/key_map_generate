import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:flutter_key_map/my_generators.dart';

class KeyMapGenerator extends Generator {
  @override
  FutureOr<String> generate(LibraryReader library, BuildStep buildStep) {
    var buffer = StringBuffer();
    library.allElements.whereType<TopLevelVariableElement>().forEach((element) {
//      buffer.writeln(''
//          '// ${element.declaration.displayName}======'
//          '// ${element.declaration.name}======'
//          '// ${element.declaration.documentationComment}======'
//          '// ${element.declaration.toString()}======'
//          '// ${element.declaration.computeConstantValue().toMapValue().length}======'
//      );

      element.declaration.computeConstantValue().toMapValue().entries.forEach((data) {
        buffer.writeln(
          'const ${data.key.toStringValue()} = "${data.key.toStringValue()}";'
        );
      });


    });

    return buffer.toString();
  }
}
