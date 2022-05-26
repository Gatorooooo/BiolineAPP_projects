import 'package:app_prototipo_bioline/app/classifier.dart';
import 'package:app_prototipo_bioline/common/ops/normalize_op.dart';

class ClassifierQuant extends Classifier {
  ClassifierQuant({int numThreads: 1}) : super(numThreads: numThreads);

  @override
  String get modelName => 'models/mobilenet_v1_1.0_224_quant.tflite';
  //String get modelName => 'models/model_v2_quant.tflite';

  @override
  NormalizeOp get preProcessNormalizeOp => NormalizeOp(0, 1);

  @override
  NormalizeOp get postProcessNormalizeOp => NormalizeOp(0, 255);
}
