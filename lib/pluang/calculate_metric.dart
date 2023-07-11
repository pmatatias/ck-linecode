import 'dart:ui';

Path drawAnimatedPath(
  Path originalPath, {
  required double headpercent,
  required double tailpercent,
}) {
  // ComputeMetrics can only be iterated once!
  final totalLength = originalPath
      .computeMetrics()
      .fold(0.0, (double prev, PathMetric metric) => prev + metric.length);

  final currentLength = totalLength * headpercent;
  // print("====$headpercent++++++$tailpercent");
  final head = currentLength;
  final tail = totalLength * tailpercent;
  return extractPathUntilLength(originalPath, currentLength, tail);
}

Path extractPathUntilLength(
  Path originalPath,
  double length,
  double tail,
) {
  var currentLength = 0.0;

  // print("====$tail");
  final path = Path();

  var metricsIterator = originalPath.computeMetrics().iterator;

  while (metricsIterator.moveNext()) {
    var metric = metricsIterator.current;

    var nextLength = currentLength + metric.length;

    final isLastSegment = nextLength > length;
    if (isLastSegment) {
      final remainingLength = length - currentLength;
      final pathSegment = metric.extractPath(tail, remainingLength);

      path.addPath(pathSegment, Offset.zero);
      break;
    } else {
      // There might be a more efficient way of extracting an entire path
      final pathSegment = metric.extractPath(tail, metric.length);
      path.addPath(pathSegment, Offset.zero);
    }

    currentLength = nextLength;
    // if (tail > metric.length) {
    //   tail = tail % metric.length;
    // }
    // if (length > metric.length) {
    //   final dif = length - metric.length;
    //   final pathSegment = metric.extractPath(tail, metric.length);
    //   path.addPath(pathSegment, Offset.zero);
    //   final remainPath = metric.extractPath(0, dif);
    //   path.addPath(remainPath, Offset.zero);
    // } else {
    //   final pathSegment = metric.extractPath(tail, length);
    //   path.addPath(pathSegment, Offset.zero);
    // }
  }
  if (currentLength == length) {
    metricsIterator = originalPath.computeMetrics().iterator;
    metricsIterator.moveNext();
    var metric = metricsIterator.current;
    final pathSegment = metric.extractPath(0.0, metric.length);
    path.addPath(pathSegment, Offset.zero);
  }

  return path;
}
