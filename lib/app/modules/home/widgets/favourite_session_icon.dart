import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fluttercon/features/app/presentation/bloc/bloc.dart';

class FavouriteSessionIcon extends StatelessWidget {
  const FavouriteSessionIcon({
    required this.sessionId,
    this.allowTap = true,
    this.inactiveColor,
    super.key,
  });

  final String sessionId;
  final bool allowTap;
  final Color? inactiveColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: allowTap ? () {} : null,
        child: Icon(
          Icons
              .favorite_outline_rounded, //state.isFavouriteSession(id: sessionId)
          //? Icons.favorite_rounded
          //: Icons.favorite_outline_rounded,
          color: inactiveColor ??
              Colors.grey.shade300, //state.isFavouriteSession(id: sessionId)
          //? Colors.red.shade400
          //: inactiveColor ?? Colors.grey.shade300,
          size: 24,
        ));
  }
}
