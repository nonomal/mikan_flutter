import 'dart:convert';
import 'dart:io';

import 'package:jiffy/jiffy.dart';

Future<void> main() async {
  var metaFile = File("releases/meta.json");
  var httpClient = HttpClient();
  var request = await httpClient.getUrl(Uri.parse(
      "https://api.github.com/repos/iota9star/mikan_flutter/releases/latest"));
  var response = await request.close();
  if (response.statusCode == HttpStatus.ok) {
    var join = await response.transform(const Utf8Decoder()).join();
    var result = jsonDecode(join);
    var arches = <String?>{
      "arm64-v8a",
      "armeabi-v7a",
      "x86_64",
      "universal",
      "win32"
    };
    var files = [
      ...result["assets"].map((it) {
        var name = it["name"];
        var arch = arches.firstWhere((arch) => name.contains(arch),
            orElse: () => null);
        var size = it["size"];
        var sizefmt = (size / 1024 / 1024).toStringAsFixed(2) + "MB";
        return {
          "name": name,
          "arch": arch,
          "size": size,
          "sizefmt": sizefmt,
          "dl": it["browser_download_url"],
          "cdl":
              "https://cdn.jsdelivr.net/gh/iota9star/mikan_flutter@master/releases/$name",
        };
      })
    ];
    await Jiffy.locale("zh_cn");
    var jiffy = Jiffy(result["published_at"])..add(hours: 8);
    var meta = {
      "tag": result["tag_name"],
      "url": result["html_url"],
      "publishedAt": jiffy.yMMMMEEEEdjm,
      "zip": result["zipball_url"],
      "files": files,
    };
    await metaFile.writeAsString(jsonEncode(meta));
  }
}
