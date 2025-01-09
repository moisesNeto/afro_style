import 'package:afro_style/src/enviroment/app_strings.dart';
import 'package:afro_style/src/menu/tab_config.dart';
import 'package:afro_style/src/menu/tab_provider.dart';
import 'package:afro_style/src/sessions/contato.dart';
import 'package:afro_style/src/sessions/inicio.dart';
import 'package:afro_style/src/sessions/localizacao.dart';
import 'package:afro_style/src/sessions/nosso_trabalho.dart';
import 'package:afro_style/src/sessions/sobre_nos.dart';

class MenuAfroStyle {
  List<TabConfig> getTabs() {
    return [
      _homeTab(),
      _sobreNosTab(),
      _nossoTrabalhoTab(),
      _contatoTab(),
      _localizacaoTab(),
    ];
  }

  TabProvider getTabProvider() {
    return TabProvider(tabs: getTabs());
  }

  TabConfig _homeTab() => TabConfig(title: AppStrings.home, content: const Inicio());
  TabConfig _sobreNosTab() => TabConfig(title: AppStrings.sobreNos, content: const SobreNos());
  TabConfig _nossoTrabalhoTab() => TabConfig(title: AppStrings.nossoTrabalho, content: const NossoTrabalho());
  TabConfig _contatoTab() => TabConfig(title: AppStrings.contato, content: const Contato());
  TabConfig _localizacaoTab() => TabConfig(title: AppStrings.localizacao, content: const Localizacao());
}
