import 'package:afro_style/src/menu/tab_config.dart';

class TabProvider {
  final List<TabConfig> _tabs;

  TabProvider({required List<TabConfig> tabs}) : _tabs = List.unmodifiable(tabs);

  List<TabConfig> getTabs() => _tabs;
}
