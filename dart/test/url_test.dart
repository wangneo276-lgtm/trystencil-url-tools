import 'package:trystencil_url_tools/trystencil_url_tools.dart';
void main() {
  final urls = Urls();
  if (urls.homeUrl() != 'https://trystencil.org/') throw StateError('home');
  if (urls.idea_url('fine-line-wrist-tattoo') != 'https://trystencil.org/ideas/fine-line-wrist-tattoo') throw StateError('extra');
}
