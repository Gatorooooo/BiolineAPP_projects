import 'package:app_prototipo_bioline/app/classifier.dart';
import 'package:app_prototipo_bioline/common/ops/normalize_op.dart';

class ClassifierFloat extends Classifier {
  ClassifierFloat({int? numThreads}) : super(numThreads: numThreads);

  @override
  String get modelName => 'models/mobilenet_v1_1.0_224.tflite';
  //String get modelName => 'models/model_unquant.tflite';
  @override
  NormalizeOp get preProcessNormalizeOp => NormalizeOp(127.5, 127.5);

  @override
  NormalizeOp get postProcessNormalizeOp => NormalizeOp(0, 1);
}
