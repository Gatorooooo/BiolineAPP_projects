import 'package:app_prototipo_bioline/common/operator.dart';
import 'package:app_prototipo_bioline/tensorbuffer/tensorbuffer.dart';

/// Applies some operation on TensorBuffers.
abstract class TensorOperator extends Operator<TensorBuffer> {
  /// See [Operator.apply].
  @override
  TensorBuffer apply(TensorBuffer input);
}
