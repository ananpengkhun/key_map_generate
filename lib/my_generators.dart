
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/key_map_generator.dart';

Builder keyMapGeneratorBuilder(BuilderOptions options) =>
    SharedPartBuilder([KeyMapGenerator()], 'keyMap');

