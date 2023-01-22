import 'package:flutter_share/flutter_share.dart';

Future<void> marketUrlShare() async {
  await FlutterShare.share(
      title: 'Party @ne',
      text: '당신 주변의 파티에 참여하세요',
      linkUrl: 'https://www.google.com/',
      chooserTitle: 'Example Chooser Title');
}
