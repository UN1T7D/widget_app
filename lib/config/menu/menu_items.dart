import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItem = <MenuItems>[
    MenuItems(
      title: 'Riverpod Counter Screen',
      subTitle: 'Counter Screen',
      link: '/counter',
      icon: Icons.add),
  MenuItems(
      title: 'Botones',
      subTitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItems(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItems(
      title: 'ProgressIndicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItems(
      title: 'Snackbars & dialog',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItems(
      title: 'AnimatedContainer',
      subTitle: 'Stateful widget animated',
      link: '/animated',
      icon: Icons.check_box_outlined),
  MenuItems(
      title: 'UI Controls + Tiles',
      subTitle: 'Controles de flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItems(
      title: 'Introduction to app',
      subTitle: 'Tutorial introduction',
      link: '/tutorial',
      icon: Icons.accessibility_rounded),
  MenuItems(
      title: 'InfiniteScroll & pull',
      subTitle: 'InfiniteScroll & pull',
      link: '/infinite',
      icon: Icons.list_alt_outlined),
  MenuItems(
      title: 'Theme Change Screen',
      subTitle: 'Theme Change Screen',
      link: '/theme_screen',
      icon: Icons.color_lens_outlined),

];
