import 'package:ck_linecode/cpi_modif/pathmetric_draw.dart';
import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class PlunagPainter extends CustomPainter {
  final Animation<double> _animation;

  PlunagPainter(this._animation) : super(repaint: _animation);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width*17.16629,size.height*21.10228);
    //  path_0.cubicTo(size.width*17.16629,size.height*21.10228,size.width*17.17678,size.height*21.07590,size.width*17.20673,size.height*21.00987);
    

    path_0.moveTo(size.width * 0.1981132, size.height * 1.004219);
    path_0.cubicTo(
        size.width * 0.1884827,
        size.height * 1.004219,
        size.width * 0.1788522,
        size.height * 1.004219,
        size.width * 0.1670844,
        size.height * 1.003065);
    path_0.cubicTo(
        size.width * 0.1061546,
        size.height * 0.9778722,
        size.width * 0.08376097,
        size.height * 0.9325981,
        size.width * 0.08054675,
        size.height * 0.8791418);
    path_0.cubicTo(
        size.width * 0.07573270,
        size.height * 0.7990786,
        size.width * 0.09217516,
        size.height * 0.7209435,
        size.width * 0.1159104,
        size.height * 0.6441177);
    path_0.cubicTo(
        size.width * 0.1248626,
        size.height * 0.6151415,
        size.width * 0.1265931,
        size.height * 0.6151038,
        size.width * 0.09588284,
        size.height * 0.6032203);
    path_0.cubicTo(
        size.width * 0.05664346,
        size.height * 0.5880363,
        size.width * 0.02732285,
        size.height * 0.5651114,
        size.width * 0.01549562,
        size.height * 0.5268406);
    path_0.cubicTo(
        size.width * 0.01408518,
        size.height * 0.5222767,
        size.width * 0.008413500,
        size.height * 0.5187665,
        size.width * 0.004716991,
        size.height * 0.5147679);
    path_0.cubicTo(
        size.width * 0.004716981,
        size.height * 0.4781116,
        size.width * 0.004716981,
        size.height * 0.4414551,
        size.width * 0.006417642,
        size.height * 0.4023928);
    path_0.cubicTo(
        size.width * 0.009944953,
        size.height * 0.3978561,
        size.width * 0.01257386,
        size.height * 0.3959665,
        size.width * 0.01347844,
        size.height * 0.3935586);
    path_0.cubicTo(
        size.width * 0.02806444,
        size.height * 0.3547328,
        size.width * 0.03983317,
        size.height * 0.3148724,
        size.width * 0.05739964,
        size.height * 0.2771700);
    path_0.cubicTo(
        size.width * 0.09176476,
        size.height * 0.2034130,
        size.width * 0.1514153,
        size.height * 0.1461051,
        size.width * 0.2203550,
        size.height * 0.09773150);
    path_0.cubicTo(
        size.width * 0.2783334,
        size.height * 0.05704919,
        size.width * 0.3460160,
        size.height * 0.03167330,
        size.width * 0.4183125,
        size.height * 0.01689938);
    path_0.cubicTo(
        size.width * 0.4302736,
        size.height * 0.01445511,
        size.width * 0.4413467,
        size.height * 0.008533844,
        size.width * 0.4528302,
        size.height * 0.004219405);
    path_0.cubicTo(
        size.width * 0.4640121,
        size.height * 0.004219409,
        size.width * 0.4751939,
        size.height * 0.004219409,
        size.width * 0.4889072,
        size.height * 0.005646983);
    path_0.cubicTo(
        size.width * 0.4957560,
        size.height * 0.007329253,
        size.width * 0.5000733,
        size.height * 0.007583949,
        size.width * 0.5062249,
        size.height * 0.008147114);
    path_0.cubicTo(
        size.width * 0.5130180,
        size.height * 0.008224160,
        size.width * 0.5179769,
        size.height * 0.007992734,
        size.width * 0.5247357,
        size.height * 0.007970055);
    path_0.cubicTo(
        size.width * 0.5301541,
        size.height * 0.008066084,
        size.width * 0.5337726,
        size.height * 0.007953371,
        size.width * 0.5395795,
        size.height * 0.007955949);
    path_0.cubicTo(
        size.width * 0.5564584,
        size.height * 0.007970945,
        size.width * 0.5711489,
        size.height * 0.007870650,
        size.width * 0.5877419,
        size.height * 0.007819595);
    path_0.cubicTo(
        size.width * 0.5960188,
        size.height * 0.007863717,
        size.width * 0.6023931,
        size.height * 0.007858595,
        size.width * 0.6104175,
        size.height * 0.008066532);
    path_0.cubicTo(
        size.width * 0.6155922,
        size.height * 0.006926198,
        size.width * 0.6191168,
        size.height * 0.005572810,
        size.width * 0.6226415,
        size.height * 0.004219414);
    path_0.cubicTo(
        size.width * 0.6261792,
        size.height * 0.004219409,
        size.width * 0.6297170,
        size.height * 0.004219409,
        size.width * 0.6349731,
        size.height * 0.005326135);
    path_0.cubicTo(
        size.width * 0.6612161,
        size.height * 0.01141607,
        size.width * 0.6856992,
        size.height * 0.01657045,
        size.width * 0.7102731,
        size.height * 0.02135081);
    path_0.cubicTo(
        size.width * 0.7879578,
        size.height * 0.03646277,
        size.width * 0.8570757,
        size.height * 0.06611638,
        size.width * 0.9122509,
        size.height * 0.1183387);
    path_0.cubicTo(
        size.width * 0.9483842,
        size.height * 0.1525380,
        size.width * 0.9757187,
        size.height * 0.1916795,
        size.width * 0.9906225,
        size.height * 0.2373774);
    path_0.cubicTo(
        size.width * 0.9934181,
        size.height * 0.2459492,
        size.width * 0.9999235,
        size.height * 0.2535529,
        size.width * 1.004717,
        size.height * 0.2616034);
    path_0.cubicTo(
        size.width * 1.004717,
        size.height * 0.2912276,
        size.width * 1.004717,
        size.height * 0.3208519,
        size.width * 1.003469,
        size.height * 0.3534843);
    path_0.cubicTo(
        size.width * 1.003053,
        size.height * 0.3628374,
        size.width * 1.003885,
        size.height * 0.3691824,
        size.width * 1.004717,
        size.height * 0.3755274);
    path_0.cubicTo(
        size.width * 1.004717,
        size.height * 0.3827610,
        size.width * 1.004717,
        size.height * 0.3899946,
        size.width * 1.003103,
        size.height * 0.3992418);
    path_0.cubicTo(
        size.width * 0.9980471,
        size.height * 0.4065151,
        size.width * 0.9930378,
        size.height * 0.4114114,
        size.width * 0.9913925,
        size.height * 0.4170878);
    path_0.cubicTo(
        size.width * 0.9567636,
        size.height * 0.5365641,
        size.width * 0.8758983,
        size.height * 0.6267943,
        size.width * 0.7660348,
        size.height * 0.6971439);
    path_0.cubicTo(
        size.width * 0.6737421,
        size.height * 0.7562423,
        size.width * 0.5709928,
        size.height * 0.7958339,
        size.width * 0.4593117,
        size.height * 0.8155911);
    path_0.cubicTo(
        size.width * 0.4376962,
        size.height * 0.8194150,
        size.width * 0.4247710,
        size.height * 0.8283267,
        size.width * 0.4144538,
        size.height * 0.8469270);
    path_0.cubicTo(
        size.width * 0.3861438,
        size.height * 0.8979652,
        size.width * 0.3513242,
        size.height * 0.9453388,
        size.width * 0.2981236,
        size.height * 0.9793025);
    path_0.cubicTo(
        size.width * 0.2851889,
        size.height * 0.9875602,
        size.width * 0.2723286,
        size.height * 0.9959113,
        size.width * 0.2594340,
        size.height * 1.004219);
    path_0.cubicTo(
        size.width * 0.2482521,
        size.height * 1.004219,
        size.width * 0.2370702,
        size.height * 1.004219,
        size.width * 0.2226827,
        size.height * 1.003138);
    path_0.cubicTo(
        size.width * 0.2123558,
        size.height * 1.002777,
        size.width * 0.2052345,
        size.height * 1.003498,
        size.width * 0.1981132,
        size.height * 1.004219);
    path_0.moveTo(size.width * 0.5211655, size.height * 0.06365061);
    path_0.cubicTo(
        size.width * 0.5118690,
        size.height * 0.06492570,
        size.width * 0.5025725,
        size.height * 0.06620055,
        size.width * 0.4932761,
        size.height * 0.06747593);
    path_0.cubicTo(
        size.width * 0.4205801,
        size.height * 0.07744914,
        size.width * 0.3507024,
        size.height * 0.09611649,
        size.width * 0.2888473,
        size.height * 0.1319618);
    path_0.cubicTo(
        size.width * 0.2083557,
        size.height * 0.1786071,
        size.width * 0.1461766,
        size.height * 0.2400428,
        size.width * 0.1095337,
        size.height * 0.3210998);
    path_0.cubicTo(
        size.width * 0.08860595,
        size.height * 0.3673936,
        size.width * 0.07296238,
        size.height * 0.4143356,
        size.width * 0.07585500,
        size.height * 0.4644056);
    path_0.cubicTo(
        size.width * 0.07767981,
        size.height * 0.4959920,
        size.width * 0.08303607,
        size.height * 0.5269222,
        size.width * 0.1214144,
        size.height * 0.5438879);
    path_0.cubicTo(
        size.width * 0.1425176,
        size.height * 0.5532168,
        size.width * 0.1506070,
        size.height * 0.5486549,
        size.width * 0.1568801,
        size.height * 0.5304478);
    path_0.cubicTo(
        size.width * 0.1653721,
        size.height * 0.5058005,
        size.width * 0.1747216,
        size.height * 0.4813278,
        size.width * 0.1851938,
        size.height * 0.4573001);
    path_0.cubicTo(
        size.width * 0.2128812,
        size.height * 0.3937736,
        size.width * 0.2404984,
        size.height * 0.3301988,
        size.width * 0.2700290,
        size.height * 0.2673521);
    path_0.cubicTo(
        size.width * 0.2799714,
        size.height * 0.2461927,
        size.width * 0.2888471,
        size.height * 0.2211773,
        size.width * 0.3226066,
        size.height * 0.2196735);
    path_0.cubicTo(
        size.width * 0.3866830,
        size.height * 0.2168193,
        size.width * 0.4507290,
        size.height * 0.2124179,
        size.width * 0.5148394,
        size.height * 0.2114752);
    path_0.cubicTo(
        size.width * 0.5732329,
        size.height * 0.2106166,
        size.width * 0.6227708,
        size.height * 0.2330887,
        size.width * 0.6569600,
        size.height * 0.2742778);
    path_0.cubicTo(
        size.width * 0.6942650,
        size.height * 0.3192208,
        size.width * 0.6837234,
        size.height * 0.3696625,
        size.width * 0.6573477,
        size.height * 0.4152324);
    path_0.cubicTo(
        size.width * 0.5948162,
        size.height * 0.5232696,
        size.width * 0.4911661,
        size.height * 0.5849860,
        size.width * 0.3607562,
        size.height * 0.6099966);
    path_0.cubicTo(
        size.width * 0.3138434,
        size.height * 0.6189936,
        size.width * 0.2642897,
        size.height * 0.6167220,
        size.width * 0.2160530,
        size.height * 0.6206823);
    path_0.cubicTo(
        size.width * 0.2075637,
        size.height * 0.6213792,
        size.width * 0.1957898,
        size.height * 0.6256181,
        size.width * 0.1922554,
        size.height * 0.6314701);
    path_0.cubicTo(
        size.width * 0.1854109,
        size.height * 0.6428029,
        size.width * 0.1825231,
        size.height * 0.6562895,
        size.width * 0.1794568,
        size.height * 0.6691620);
    path_0.cubicTo(
        size.width * 0.1694570,
        size.height * 0.7111413,
        size.width * 0.1603325,
        size.height * 0.7532868,
        size.width * 0.1504596,
        size.height * 0.7952909);
    path_0.cubicTo(
        size.width * 0.1405536,
        size.height * 0.8374356,
        size.width * 0.1437262,
        size.height * 0.8787177,
        size.width * 0.1614120,
        size.height * 0.9186472);
    path_0.cubicTo(
        size.width * 0.1644737,
        size.height * 0.9255596,
        size.width * 0.1729119,
        size.height * 0.9316876,
        size.width * 0.1805088,
        size.height * 0.9356740);
    path_0.cubicTo(
        size.width * 0.2103516,
        size.height * 0.9513337,
        size.width * 0.2371548,
        size.height * 0.9374806,
        size.width * 0.2608076,
        size.height * 0.9240471);
    path_0.cubicTo(
        size.width * 0.3174679,
        size.height * 0.8918669,
        size.width * 0.3436211,
        size.height * 0.8383133,
        size.width * 0.3718602,
        size.height * 0.7871568);
    path_0.cubicTo(
        size.width * 0.3799129,
        size.height * 0.7725689,
        size.width * 0.3855625,
        size.height * 0.7612005,
        size.width * 0.4063906,
        size.height * 0.7579925);
    path_0.cubicTo(
        size.width * 0.4406286,
        size.height * 0.7527190,
        size.width * 0.4754900,
        size.height * 0.7468561,
        size.width * 0.5077047,
        size.height * 0.7357226);
    path_0.cubicTo(
        size.width * 0.5685845,
        size.height * 0.7146824,
        size.width * 0.6293822,
        size.height * 0.6924727,
        size.width * 0.6870929,
        size.height * 0.6654211);
    path_0.cubicTo(
        size.width * 0.7251904,
        size.height * 0.6475632,
        size.width * 0.7594979,
        size.height * 0.6221496,
        size.width * 0.7925519,
        size.height * 0.5970144);
    path_0.cubicTo(
        size.width * 0.8465259,
        size.height * 0.5559708,
        size.width * 0.8843905,
        size.height * 0.5030448,
        size.width * 0.9102464,
        size.height * 0.4449834);
    path_0.cubicTo(
        size.width * 0.9255713,
        size.height * 0.4105700,
        size.width * 0.9327524,
        size.height * 0.3724742,
        size.width * 0.9378736,
        size.height * 0.3354016);
    path_0.cubicTo(
        size.width * 0.9443911,
        size.height * 0.2882211,
        size.width * 0.9269488,
        size.height * 0.2450045,
        size.width * 0.9007477,
        size.height * 0.2038477);
    path_0.cubicTo(
        size.width * 0.8718503,
        size.height * 0.1584555,
        size.width * 0.8328451,
        size.height * 0.1220465,
        size.width * 0.7792189,
        size.height * 0.1031910);
    path_0.cubicTo(
        size.width * 0.6980920,
        size.height * 0.07466595,
        size.width * 0.6132110,
        size.height * 0.05927338,
        size.width * 0.5211655,
        size.height * 0.06365061);
    path_0.moveTo(size.width * 0.2943280, size.height * 0.3750943);
    path_0.cubicTo(
        size.width * 0.2675891,
        size.height * 0.4365272,
        size.width * 0.2408501,
        size.height * 0.4979600,
        size.width * 0.2113309,
        size.height * 0.5657806);
    path_0.cubicTo(
        size.width * 0.2450444,
        size.height * 0.5632363,
        size.width * 0.2708178,
        size.height * 0.5638427,
        size.width * 0.2951982,
        size.height * 0.5589242);
    path_0.cubicTo(
        size.width * 0.3472337,
        size.height * 0.5484267,
        size.width * 0.3979237,
        size.height * 0.5357882,
        size.width * 0.4476602,
        size.height * 0.5156467);
    path_0.cubicTo(
        size.width * 0.5202783,
        size.height * 0.4862391,
        size.width * 0.5704074,
        size.height * 0.4413802,
        size.width * 0.6038618,
        size.height * 0.3790878);
    path_0.cubicTo(
        size.width * 0.6245309,
        size.height * 0.3406018,
        size.width * 0.6006822,
        size.height * 0.2927289,
        size.width * 0.5556603,
        size.height * 0.2790455);
    path_0.cubicTo(
        size.width * 0.4919872,
        size.height * 0.2596934,
        size.width * 0.4285952,
        size.height * 0.2638653,
        size.width * 0.3642789,
        size.height * 0.2776322);

    path_0.cubicTo(
        size.width * 0.3447407,
        size.height * 0.2818143,
        size.width * 0.3352046,
        size.height * 0.2894166,
        size.width * 0.3285310,
        size.height * 0.3051141);
    path_0.cubicTo(
        size.width * 0.3188551,
        size.height * 0.3278735,
        size.width * 0.3069516,
        size.height * 0.3498751,
        size.width * 0.2943280,
        size.height * 0.3750943);
    path_0.close();

    final animationPercent = _animation.value;

    final path = createAnimatedPath(path_0, animationPercent);

    Paint paint0Fill = Paint()..style = PaintingStyle.stroke
    
      ..strokeWidth = size.width * 0.06414886;
    
    paint0Fill.color = const Color(0xff083C3B).withOpacity(1.0);
    canvas.drawPath(path, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
