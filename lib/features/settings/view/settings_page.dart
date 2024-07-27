import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer_app/features/settings/components/components.dart';
import 'package:rhymer_app/ui/ui.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          centerTitle: true,
          floating: true,
          // pinned: true,
          snap: true,
          elevation: 0,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          title: Text('Настройки'),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(
          child: SettingsToggleCard(
            title: 'Темная тема',
            value: false,
            onChanged: (v) {},
          ),
        ),
        SliverToBoxAdapter(
          child: SettingsToggleCard(
            title: 'Уведомления',
            value: true,
            onChanged: (v) {},
          ),
        ),
        SliverToBoxAdapter(
          child: SettingsToggleCard(
            title: 'Разрешить аналитику',
            value: false,
            onChanged: (v) {},
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(
            child: SettingsActionCard(
          iconColor: Theme.of(context).primaryColor,
          iconData: Icons.delete_sweep_rounded,
          title: 'Очистить историю',
          onTap: () {},
        )),
        SliverToBoxAdapter(
            child: SettingsActionCard(
          iconData: Icons.help,
          title: 'Поддержка',
          onTap: () {},
        )),
      ],
    );
  }
}
