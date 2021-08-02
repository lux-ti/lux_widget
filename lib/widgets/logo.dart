import 'package:flutter/material.dart';
import 'package:lux_ui/lux_ui.dart';

//Add this CustomPaint widget to the Widget Tree
/* CustomPaint(
    size: Size(WIDTH, (WIDTH*0.16744186046511628).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
    painter: XLogoPainter(),
) */

//Copy this CustomPainter code to the Bottom of the File

class _XLogoPainter extends CustomPainter {
  final Color primaryColor;
  final Color secondaryColor;

  _XLogoPainter(this.primaryColor, this.secondaryColor);
  @override
  void paint(Canvas canvas, Size size) {
    Path lux = Path();
    lux.moveTo(size.width * 0.1218153, size.height * 0.9745222);
    lux.lineTo(size.width * 0.005901070, size.height * 0.9745222);
    lux.cubicTo(size.width * 0.002107530, size.height * 0.9745222, 0,
        size.height * 0.9605111, 0, size.height * 0.9388556);
    lux.lineTo(0, size.height * 0.03566972);
    lux.cubicTo(
        0,
        size.height * 0.01401381,
        size.width * 0.002318284,
        size.height * 0.001274956,
        size.width * 0.005901070,
        size.height * 0.001274956);
    lux.lineTo(size.width * 0.03793553, size.height * 0.001274956);
    lux.cubicTo(
        size.width * 0.04172907,
        size.height * 0.001274956,
        size.width * 0.04362586,
        size.height * 0.01528769,
        size.width * 0.04362586,
        size.height * 0.03566972);
    lux.lineTo(size.width * 0.04362586, size.height * 0.6942694);
    lux.cubicTo(
        size.width * 0.04362586,
        size.height * 0.7159250,
        size.width * 0.04594414,
        size.height * 0.7286639,
        size.width * 0.04931628,
        size.height * 0.7286639);
    lux.lineTo(size.width * 0.1218153, size.height * 0.7286639);
    lux.cubicTo(
        size.width * 0.1256088,
        size.height * 0.7286639,
        size.width * 0.1277163,
        size.height * 0.7401278,
        size.width * 0.1277163,
        size.height * 0.7630583);
    lux.lineTo(size.width * 0.1277163, size.height * 0.9375806);
    lux.cubicTo(
        size.width * 0.1277163,
        size.height * 0.9605111,
        size.width * 0.1253981,
        size.height * 0.9745222,
        size.width * 0.1218153,
        size.height * 0.9745222);
    lux.close();

    lux.moveTo(size.width * 0.1578535, size.height * 0.001274956);
    lux.lineTo(size.width * 0.1903093, size.height * 0.001274956);
    lux.cubicTo(
        size.width * 0.1936814,
        size.height * 0.001274956,
        size.width * 0.1957893,
        size.height * 0.01273992,
        size.width * 0.1957893,
        size.height * 0.03566972);
    lux.lineTo(size.width * 0.1957893, size.height * 0.5095556);
    lux.cubicTo(
        size.width * 0.1957893,
        size.height * 0.6828028,
        size.width * 0.2172860,
        size.height * 0.7375806,
        size.width * 0.2345674,
        size.height * 0.7375806);
    lux.cubicTo(
        size.width * 0.2524819,
        size.height * 0.7375806,
        size.width * 0.2731353,
        size.height * 0.6840778,
        size.width * 0.2731353,
        size.height * 0.5095556);
    lux.lineTo(size.width * 0.2731353, size.height * 0.03566972);
    lux.cubicTo(
        size.width * 0.2731353,
        size.height * 0.01273992,
        size.width * 0.2750321,
        size.height * 0.001274956,
        size.width * 0.2788256,
        size.height * 0.001274956);
    lux.lineTo(size.width * 0.3110712, size.height * 0.001274956);
    lux.cubicTo(
        size.width * 0.3148647,
        size.height * 0.001274956,
        size.width * 0.3167614,
        size.height * 0.01273992,
        size.width * 0.3167614,
        size.height * 0.03566972);
    lux.lineTo(size.width * 0.3167614, size.height * 0.5171972);
    lux.cubicTo(
        size.width * 0.3167614,
        size.height * 0.8025500,
        size.width * 0.2840944,
        size.height * 0.9872611,
        size.width * 0.2345674,
        size.height * 0.9872611);
    lux.cubicTo(
        size.width * 0.1850405,
        size.height * 0.9872611,
        size.width * 0.1521633,
        size.height * 0.8025500,
        size.width * 0.1521633,
        size.height * 0.5171972);
    lux.lineTo(size.width * 0.1521633, size.height * 0.03566972);
    lux.cubicTo(
        size.width * 0.1521633,
        size.height * 0.01273992,
        size.width * 0.1544814,
        size.height * 0.001274956,
        size.width * 0.1578535,
        size.height * 0.001274956);
    lux.close();

    lux.moveTo(size.width * 0.4463744, size.height * 0.4738861);
    lux.lineTo(size.width * 0.4056991, size.height * 0.02929944);
    lux.cubicTo(size.width * 0.4040130, size.height * 0.01146497,
        size.width * 0.4010623, 0, size.width * 0.3976902, 0);
    lux.lineTo(size.width * 0.3618623, 0);
    lux.cubicTo(
        size.width * 0.3591228,
        0,
        size.width * 0.3572260,
        size.height * 0.01783439,
        size.width * 0.3587009,
        size.height * 0.03312111);
    lux.lineTo(size.width * 0.4000088, size.height * 0.4726111);
    lux.cubicTo(
        size.width * 0.4014837,
        size.height * 0.4878972,
        size.width * 0.4014837,
        size.height * 0.5019111,
        size.width * 0.4000088,
        size.height * 0.5184722);
    lux.lineTo(size.width * 0.3587009, size.height * 0.9388528);
    lux.cubicTo(
        size.width * 0.3572260,
        size.height * 0.9541389,
        size.width * 0.3589116,
        size.height * 0.9732472,
        size.width * 0.3618623,
        size.height * 0.9732472);
    lux.lineTo(size.width * 0.3979009, size.height * 0.9732472);
    lux.cubicTo(
        size.width * 0.4004302,
        size.height * 0.9732472,
        size.width * 0.4027484,
        size.height * 0.9656056,
        size.width * 0.4040130,
        size.height * 0.9528667);
    lux.lineTo(size.width * 0.4463744, size.height * 0.5197444);
    lux.cubicTo(
        size.width * 0.4478498,
        size.height * 0.5031861,
        size.width * 0.4478498,
        size.height * 0.4878972,
        size.width * 0.4463744,
        size.height * 0.4738861);
    lux.close();

    lux.moveTo(size.width * 0.5093907, size.height * 0.9401278);
    lux.lineTo(size.width * 0.4803070, size.height * 0.6445861);
    lux.lineTo(size.width * 0.4571219, size.height * 0.8815278);
    lux.lineTo(size.width * 0.4640767, size.height * 0.9528667);
    lux.cubicTo(
        size.width * 0.4653395,
        size.height * 0.9656056,
        size.width * 0.4676605,
        size.height * 0.9732472,
        size.width * 0.4701907,
        size.height * 0.9732472);
    lux.lineTo(size.width * 0.5062279, size.height * 0.9732472);
    lux.cubicTo(
        size.width * 0.5091767,
        size.height * 0.9745222,
        size.width * 0.5110744,
        size.height * 0.9554139,
        size.width * 0.5093907,
        size.height * 0.9401278);
    lux.close();

    lux.moveTo(size.width * 0.4805163, size.height * 0.3414000);
    lux.lineTo(size.width * 0.5093907, size.height * 0.03312111);
    lux.cubicTo(size.width * 0.5108651, size.height * 0.01783439,
        size.width * 0.5089674, 0, size.width * 0.5062279, 0);
    lux.lineTo(size.width * 0.4704000, 0);
    lux.cubicTo(
        size.width * 0.4670279,
        0,
        size.width * 0.4638660,
        size.height * 0.01146497,
        size.width * 0.4623907,
        size.height * 0.02929944);
    lux.lineTo(size.width * 0.4571219, size.height * 0.08662417);
    lux.lineTo(size.width * 0.4805163, size.height * 0.3414000);
    lux.close();

    Paint lux_fill = Paint()..style = PaintingStyle.fill;
    lux_fill.color = primaryColor;
    canvas.drawPath(lux, lux_fill);

    Path erp = Path();
    erp.moveTo(size.width * 0.5692093, size.height * 0.4638250);
    erp.lineTo(size.width * 0.6471488, size.height * 0.4638250);
    erp.cubicTo(
        size.width * 0.6491395,
        size.height * 0.4638250,
        size.width * 0.6504698,
        size.height * 0.4717306,
        size.width * 0.6504698,
        size.height * 0.4835917);
    erp.lineTo(size.width * 0.6504698, size.height * 0.4967667);
    erp.cubicTo(
        size.width * 0.6504698,
        size.height * 0.5086278,
        size.width * 0.6491395,
        size.height * 0.5165333,
        size.width * 0.6471488,
        size.height * 0.5165333);
    erp.lineTo(size.width * 0.5692093, size.height * 0.5165333);
    erp.cubicTo(
        size.width * 0.5678837,
        size.height * 0.5165333,
        size.width * 0.5669953,
        size.height * 0.5218028,
        size.width * 0.5669953,
        size.height * 0.5297083);
    erp.lineTo(size.width * 0.5669953, size.height * 0.9118389);
    erp.cubicTo(
        size.width * 0.5669953,
        size.height * 0.9197444,
        size.width * 0.5678837,
        size.height * 0.9250167,
        size.width * 0.5692093,
        size.height * 0.9250167);
    erp.lineTo(size.width * 0.6575535, size.height * 0.9250167);
    erp.cubicTo(
        size.width * 0.6595442,
        size.height * 0.9250167,
        size.width * 0.6608744,
        size.height * 0.9329222,
        size.width * 0.6608744,
        size.height * 0.9447806);
    erp.lineTo(size.width * 0.6608744, size.height * 0.9579583);
    erp.cubicTo(
        size.width * 0.6608744,
        size.height * 0.9698167,
        size.width * 0.6595442,
        size.height * 0.9777222,
        size.width * 0.6575535,
        size.height * 0.9777222);
    erp.lineTo(size.width * 0.5614605, size.height * 0.9777222);
    erp.cubicTo(
        size.width * 0.5594698,
        size.height * 0.9777222,
        size.width * 0.5581395,
        size.height * 0.9698167,
        size.width * 0.5581395,
        size.height * 0.9579583);
    erp.lineTo(size.width * 0.5581395, size.height * 0.01976528);
    erp.cubicTo(size.width * 0.5581395, size.height * 0.007906111,
        size.width * 0.5594698, 0, size.width * 0.5614605, 0);
    erp.lineTo(size.width * 0.6577767, 0);
    erp.cubicTo(
        size.width * 0.6597674,
        0,
        size.width * 0.6610977,
        size.height * 0.007906111,
        size.width * 0.6610977,
        size.height * 0.01976528);
    erp.lineTo(size.width * 0.6610977, size.height * 0.03294222);
    erp.cubicTo(
        size.width * 0.6610977,
        size.height * 0.04480139,
        size.width * 0.6597674,
        size.height * 0.05270750,
        size.width * 0.6577767,
        size.height * 0.05270750);
    erp.lineTo(size.width * 0.5692093, size.height * 0.05270750);
    erp.cubicTo(
        size.width * 0.5678837,
        size.height * 0.05270750,
        size.width * 0.5669953,
        size.height * 0.05797806,
        size.width * 0.5669953,
        size.height * 0.06588417);
    erp.lineTo(size.width * 0.5669953, size.height * 0.4493306);
    erp.cubicTo(
        size.width * 0.5669953,
        size.height * 0.4585556,
        size.width * 0.5678837,
        size.height * 0.4638250,
        size.width * 0.5692093,
        size.height * 0.4638250);
    erp.close();

    Paint erp_fill = Paint()..style = PaintingStyle.fill;
    erp_fill.color = secondaryColor;
    canvas.drawPath(erp, erp_fill);

    erp.moveTo(size.width * 0.7128000, size.height * 0.9579556);
    erp.lineTo(size.width * 0.7128000, size.height * 0.02108092);
    erp.cubicTo(
        size.width * 0.7128000,
        size.height * 0.009221750,
        size.width * 0.7141302,
        size.height * 0.001315647,
        size.width * 0.7161209,
        size.height * 0.001315647);
    erp.lineTo(size.width * 0.7821023, size.height * 0.001315647);
    erp.cubicTo(
        size.width * 0.8115488,
        size.height * 0.001315647,
        size.width * 0.8330279,
        size.height * 0.1330842,
        size.width * 0.8330279,
        size.height * 0.3149250);
    erp.cubicTo(
        size.width * 0.8330279,
        size.height * 0.4835889,
        size.width * 0.8168651,
        size.height * 0.6021806,
        size.width * 0.7891860,
        size.height * 0.6193111);
    erp.cubicTo(
        size.width * 0.7874140,
        size.height * 0.6206278,
        size.width * 0.7869721,
        size.height * 0.6272167,
        size.width * 0.7878605,
        size.height * 0.6351222);
    erp.lineTo(size.width * 0.8250558, size.height * 0.9540028);
    erp.cubicTo(
        size.width * 0.8266047,
        size.height * 0.9684972,
        size.width * 0.8257209,
        size.height * 0.9777194,
        size.width * 0.8230651,
        size.height * 0.9777194);
    erp.lineTo(size.width * 0.8197442, size.height * 0.9777194);
    erp.cubicTo(
        size.width * 0.8179721,
        size.height * 0.9777194,
        size.width * 0.8164186,
        size.height * 0.9737667,
        size.width * 0.8155349,
        size.height * 0.9658611);
    erp.lineTo(size.width * 0.7765674, size.height * 0.6298528);
    erp.cubicTo(
        size.width * 0.7759023,
        size.height * 0.6232639,
        size.width * 0.7750186,
        size.height * 0.6219444,
        size.width * 0.7739116,
        size.height * 0.6219444);
    erp.lineTo(size.width * 0.7240930, size.height * 0.6219444);
    erp.cubicTo(
        size.width * 0.7227628,
        size.height * 0.6219444,
        size.width * 0.7218791,
        size.height * 0.6272167,
        size.width * 0.7218791,
        size.height * 0.6351222);
    erp.lineTo(size.width * 0.7218791, size.height * 0.9579556);
    erp.cubicTo(
        size.width * 0.7218791,
        size.height * 0.9698139,
        size.width * 0.7205488,
        size.height * 0.9777194,
        size.width * 0.7185581,
        size.height * 0.9777194);
    erp.lineTo(size.width * 0.7163442, size.height * 0.9777194);
    erp.cubicTo(
        size.width * 0.7141302,
        size.height * 0.9790389,
        size.width * 0.7128000,
        size.height * 0.9711333,
        size.width * 0.7128000,
        size.height * 0.9579556);
    erp.close();
    erp.moveTo(size.width * 0.7240930, size.height * 0.5692389);
    erp.lineTo(size.width * 0.7801070, size.height * 0.5692389);
    erp.cubicTo(
        size.width * 0.7984884,
        size.height * 0.5692389,
        size.width * 0.8237256,
        size.height * 0.5204833,
        size.width * 0.8237256,
        size.height * 0.3149250);
    erp.cubicTo(
        size.width * 0.8237256,
        size.height * 0.2240044,
        size.width * 0.8153116,
        size.height * 0.05534083,
        size.width * 0.7801070,
        size.height * 0.05534083);
    erp.lineTo(size.width * 0.7240930, size.height * 0.05534083);
    erp.cubicTo(
        size.width * 0.7227628,
        size.height * 0.05534083,
        size.width * 0.7218791,
        size.height * 0.06061139,
        size.width * 0.7218791,
        size.height * 0.06851750);
    erp.lineTo(size.width * 0.7218791, size.height * 0.5560611);
    erp.cubicTo(
        size.width * 0.7216558,
        size.height * 0.5639667,
        size.width * 0.7227628,
        size.height * 0.5692389,
        size.width * 0.7240930,
        size.height * 0.5692389);
    erp.close();

    erp.moveTo(size.width * 0.8846419, size.height * 0.9579556);
    erp.lineTo(size.width * 0.8846419, size.height * 0.02108094);
    erp.cubicTo(
        size.width * 0.8846419,
        size.height * 0.009221750,
        size.width * 0.8859721,
        size.height * 0.001315647,
        size.width * 0.8879674,
        size.height * 0.001315647);
    erp.lineTo(size.width * 0.9399953, size.height * 0.001315647);
    erp.cubicTo(size.width * 0.9807349, size.height * 0.001315647, size.width,
        size.height * 0.1357197, size.width, size.height * 0.3096528);
    erp.cubicTo(
        size.width,
        size.height * 0.4835889,
        size.width * 0.9807349,
        size.height * 0.6206278,
        size.width * 0.9399953,
        size.height * 0.6206278);
    erp.lineTo(size.width * 0.9158651, size.height * 0.6206278);
    erp.cubicTo(
        size.width * 0.9138698,
        size.height * 0.6206278,
        size.width * 0.9125442,
        size.height * 0.6127222,
        size.width * 0.9125442,
        size.height * 0.6008639);
    erp.lineTo(size.width * 0.9125442, size.height * 0.5876861);
    erp.cubicTo(
        size.width * 0.9125442,
        size.height * 0.5758278,
        size.width * 0.9138698,
        size.height * 0.5679194,
        size.width * 0.9158651,
        size.height * 0.5679194);
    erp.lineTo(size.width * 0.9399953, size.height * 0.5679194);
    erp.cubicTo(
        size.width * 0.9767535,
        size.height * 0.5679194,
        size.width * 0.9907023,
        size.height * 0.4440583,
        size.width * 0.9907023,
        size.height * 0.3096528);
    erp.cubicTo(
        size.width * 0.9907023,
        size.height * 0.1752503,
        size.width * 0.9767535,
        size.height * 0.05534083,
        size.width * 0.9399953,
        size.height * 0.05534083);
    erp.lineTo(size.width * 0.8957163, size.height * 0.05534083);
    erp.cubicTo(
        size.width * 0.8943860,
        size.height * 0.05534083,
        size.width * 0.8935023,
        size.height * 0.06061139,
        size.width * 0.8935023,
        size.height * 0.06851750);
    erp.lineTo(size.width * 0.8935023, size.height * 0.9592722);
    erp.cubicTo(
        size.width * 0.8935023,
        size.height * 0.9711333,
        size.width * 0.8921721,
        size.height * 0.9790389,
        size.width * 0.8901814,
        size.height * 0.9790389);
    erp.lineTo(size.width * 0.8879674, size.height * 0.9790389);
    erp.cubicTo(
        size.width * 0.8859721,
        size.height * 0.9790389,
        size.width * 0.8846419,
        size.height * 0.9711333,
        size.width * 0.8846419,
        size.height * 0.9579556);
    erp.close();

    canvas.drawPath(erp, erp_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class XLogo extends StatelessWidget {
  final double width;
  final Color? primaryColor;
  final Color? secondaryColor;
  const XLogo({
    Key? key,
    this.width = 100,
    this.primaryColor,
    this.secondaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = XTheme.of(context);
    return CustomPaint(
      size: Size(
          width,
          (width * 0.16744186046511628)
              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: _XLogoPainter(primaryColor ?? theme.primaryColor,
          secondaryColor ?? theme.foregroundColor),
    );
  }
}
