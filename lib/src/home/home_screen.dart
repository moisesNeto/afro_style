import 'package:afro_style/src/enviroment/app_strings.dart';
import 'package:afro_style/src/menu/tab_provider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final TabProvider tabs;

  const HomeScreen({super.key, required this.tabs});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    if (widget.tabs.getTabs().isEmpty) {
      throw FlutterError(AppStrings.noAbas);
    }
    _tabController = TabController(length: widget.tabs.getTabs().length, vsync: this);
    _pageController = PageController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void _onTabTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appTitle),
        bottom: TabBar(
          controller: _tabController,
          tabs: _buildTabs(),
          onTap: _onTabTapped,
        ),
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            _tabController.animateTo(index);
          },
          children: _buildTabViews(),
        ),
      ),
    );
  }

  List<Tab> _buildTabs() {
    return widget.tabs.getTabs().map((tabConfig) => Tab(text: tabConfig.title)).toList();
  }

  List<Widget> _buildTabViews() {
    return widget.tabs.getTabs().map((tabConfig) => tabConfig.content).toList();
  }
}
