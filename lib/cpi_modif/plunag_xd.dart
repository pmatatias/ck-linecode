import 'package:ck_linecode/cpi_modif/pathmetric_draw.dart';
import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class Plunag2 extends CustomPainter {
  final Animation<double> _animation;

  Plunag2(this._animation) : super(repaint: _animation);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4907935, size.height * -0.9989202);
    path_0.cubicTo(
        size.width * 0.3528023,
        size.height * -0.9862167,
        size.width * 0.2285628,
        size.height * -0.9328619,
        size.width * 0.1441558,
        size.height * -0.8498656);
    path_0.arcToPoint(
        Offset(size.width * 0.004741966, size.height * -0.5826682),
        radius:
            Radius.elliptical(size.width * 0.5624351, size.height * 0.5022464),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * -0.001896786,
        size.height * -0.5398996,
        size.width * 0.003793573,
        size.height * -0.4975546,
        size.width * 0.01991626,
        size.height * -0.4666427);
    path_0.cubicTo(
        size.width * 0.03414215,
        size.height * -0.4403887,
        size.width * 0.06591333,
        size.height * -0.4132879,
        size.width * 0.09389093,
        size.height * -0.4039720);
    path_0.arcToPoint(Offset(size.width * 0.1194975, size.height * -0.3942326),
        radius:
            Radius.elliptical(size.width * 0.1612980, size.height * 0.1440368),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.1209201,
        size.height * -0.3929622,
        size.width * 0.1152298,
        size.height * -0.3671318,
        size.width * 0.1066942,
        size.height * -0.3366433);
    path_0.cubicTo(
        size.width * 0.06306815,
        size.height * -0.1858949,
        size.width * 0.06733592,
        size.height * -0.08003218,
        size.width * 0.1176008,
        size.height * -0.03260570);
    path_0.cubicTo(
        size.width * 0.1526913,
        size.height * 0.0004234507,
        size.width * 0.2176562,
        size.height * 0.006775211,
        size.width * 0.2736114,
        size.height * -0.01736148);
    path_0.cubicTo(
        size.width * 0.3167633,
        size.height * -0.03599331,
        size.width * 0.3779347,
        size.height * -0.09993437,
        size.width * 0.4149220,
        size.height * -0.1655692);
    path_0.cubicTo(
        size.width * 0.4263027,
        size.height * -0.1850480,
        size.width * 0.4272511,
        size.height * -0.1858949,
        size.width * 0.4604449,
        size.height * -0.1922466);
    path_0.cubicTo(
        size.width * 0.7354789,
        size.height * -0.2481421,
        size.width * 0.9355899,
        size.height * -0.4001609,
        size.width * 0.9910709,
        size.height * -0.5953717);
    path_0.cubicTo(
        size.width * 1.011461,
        size.height * -0.6669349,
        size.width * 1.002926,
        size.height * -0.7541657,
        size.width * 0.9692578,
        size.height * -0.8138722);
    path_0.cubicTo(
        size.width * 0.9066639,
        size.height * -0.9256632,
        size.width * 0.7938051,
        size.height * -0.9836760,
        size.width * 0.6088684,
        size.height * -0.9993437);
    path_0.cubicTo(
        size.width * 0.5519648,
        size.height * -1.004002,
        size.width * 0.5453261,
        size.height * -1.004002,
        size.width * 0.4907935,
        size.height * -0.9989202);
    path_0.close();
    path_0.moveTo(size.width * 0.6496493, size.height * -0.9379433);
    path_0.cubicTo(
        size.width * 0.7425919,
        size.height * -0.9243929,
        size.width * 0.8051858,
        size.height * -0.9006796,
        size.width * 0.8526055,
        size.height * -0.8617222);
    path_0.cubicTo(
        size.width * 0.9076123,
        size.height * -0.8164129,
        size.width * 0.9336931,
        size.height * -0.7660223,
        size.width * 0.9374867,
        size.height * -0.6965764);
    path_0.cubicTo(
        size.width * 0.9427028,
        size.height * -0.6029938,
        size.width * 0.9014477,
        size.height * -0.5123753,
        size.width * 0.8151439,
        size.height * -0.4302259);
    path_0.cubicTo(
        size.width * 0.7269434,
        size.height * -0.3459592,
        size.width * 0.5908490,
        size.height * -0.2820182,
        size.width * 0.4286737,
        size.height * -0.2494125);
    path_0.lineTo(size.width * 0.3812541, size.height * -0.2400965);
    path_0.lineTo(size.width * 0.3656056, size.height * -0.2096081);
    path_0.arcToPoint(Offset(size.width * 0.2835696, size.height * -0.1003578),
        radius:
            Radius.elliptical(size.width * 0.4129731, size.height * 0.3687790),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.2527468,
        size.height * -0.07241007,
        size.width * 0.2323563,
        size.height * -0.06351760,
        size.width * 0.2015336,
        size.height * -0.06351760);
    path_0.cubicTo(
        size.width * 0.1593301,
        size.height * -0.06351760,
        size.width * 0.1422590,
        size.height * -0.09146535,
        size.width * 0.1422590,
        size.height * -0.1592175);
    path_0.cubicTo(
        size.width * 0.1422590,
        size.height * -0.2036798,
        size.width * 0.1512687,
        size.height * -0.2561877,
        size.width * 0.1726076,
        size.height * -0.3302915);
    path_0.lineTo(size.width * 0.1873077, size.height * -0.3832229);
    path_0.lineTo(size.width * 0.2489532, size.height * -0.3861870);
    path_0.cubicTo(
        size.width * 0.3390506,
        size.height * -0.3899981,
        size.width * 0.4021187,
        size.height * -0.4039720,
        size.width * 0.4713514,
        size.height * -0.4348839);
    path_0.cubicTo(
        size.width * 0.5500680,
        size.height * -0.4700303,
        size.width * 0.6174040,
        size.height * -0.5267727,
        size.width * 0.6496493,
        size.height * -0.5860558);
    path_0.cubicTo(
        size.width * 0.6875851,
        size.height * -0.6546548,
        size.width * 0.6847399,
        size.height * -0.7037751,
        size.width * 0.6401654,
        size.height * -0.7469670);
    path_0.cubicTo(
        size.width * 0.6041265,
        size.height * -0.7816900,
        size.width * 0.5552842,
        size.height * -0.7960873,
        size.width * 0.4718256,
        size.height * -0.7960873);
    path_0.cubicTo(
        size.width * 0.4239318,
        size.height * -0.7960873,
        size.width * 0.3058568,
        size.height * -0.7846541,
        size.width * 0.2940019,
        size.height * -0.7791493);
    path_0.cubicTo(
        size.width * 0.2816728,
        size.height * -0.7732210,
        size.width * 0.1768753,
        size.height * -0.5462514,
        size.width * 0.1541139,
        size.height * -0.4772289);
    path_0.cubicTo(
        size.width * 0.1498461,
        size.height * -0.4641020,
        size.width * 0.1446300,
        size.height * -0.4530922,
        size.width * 0.1422590,
        size.height * -0.4530922);
    path_0.cubicTo(
        size.width * 0.1318267,
        size.height * -0.4530922,
        size.width * 0.1100136,
        size.height * -0.4632551,
        size.width * 0.09815869,
        size.height * -0.4734179);
    path_0.cubicTo(
        size.width * 0.07634565,
        size.height * -0.4920497,
        size.width * 0.06970690,
        size.height * -0.5102581,
        size.width * 0.06970690,
        size.height * -0.5526032);
    path_0.cubicTo(
        size.width * 0.07018110,
        size.height * -0.6902246,
        size.width * 0.1849367,
        size.height * -0.8418200,
        size.width * 0.3352570,
        size.height * -0.9027969);
    path_0.arcToPoint(Offset(size.width * 0.4765676, size.height * -0.9396371),
        radius:
            Radius.elliptical(size.width * 0.6701536, size.height * 0.5984375),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.5230388,
        size.height * -0.9455654,
        size.width * 0.6012813,
        size.height * -0.9447185,
        size.width * 0.6496493,
        size.height * -0.9379433);
    path_0.close();
    path_0.moveTo(size.width * 0.5619230, size.height * -0.7241007);
    path_0.cubicTo(
        size.width * 0.6150330,
        size.height * -0.6999640,
        size.width * 0.6249911,
        size.height * -0.6665114,
        size.width * 0.5951167,
        size.height * -0.6131566);
    path_0.cubicTo(
        size.width * 0.5439035,
        size.height * -0.5199975,
        size.width * 0.4087575,
        size.height * -0.4518219,
        size.width * 0.2641275,
        size.height * -0.4458936);
    path_0.lineTo(size.width * 0.2086465, size.height * -0.4433529);
    path_0.lineTo(size.width * 0.2257176, size.height * -0.4873918);
    path_0.cubicTo(
        size.width * 0.2461080,
        size.height * -0.5398996,
        size.width * 0.2925793,
        size.height * -0.6436451,
        size.width * 0.3181859,
        size.height * -0.6927653);
    path_0.cubicTo(
        size.width * 0.3305150,
        size.height * -0.7177489,
        size.width * 0.3390506,
        size.height * -0.7283352,
        size.width * 0.3447409,
        size.height * -0.7287587);
    path_0.cubicTo(
        size.width * 0.3494829,
        size.height * -0.7287587,
        size.width * 0.3684508,
        size.height * -0.7317228,
        size.width * 0.3864702,
        size.height * -0.7346870);
    path_0.arcToPoint(Offset(size.width * 0.4746708, size.height * -0.7397684),
        radius:
            Radius.elliptical(size.width * 0.5074615, size.height * 0.4531558),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.5273066,
        size.height * -0.7389215,
        size.width * 0.5311002,
        size.height * -0.7384980,
        size.width * 0.5619230,
        size.height * -0.7241007);
    path_0.close();

    final animationPercent = _animation.value;

    final path = createAnimatedPath(path_0, animationPercent);

    Paint paint0Fill = Paint()..style = PaintingStyle.stroke;
    paint0Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
