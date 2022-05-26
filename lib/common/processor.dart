import 'package:app_prototipo_bioline/common/operator.dart';

/// Processes [T] object with prepared [Operator].
abstract class Processor<T> {
  T process(T input);
}
