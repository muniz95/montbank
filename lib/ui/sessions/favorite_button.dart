
import 'package:montbank/models/session.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FavoriteButton extends StatefulWidget {
  final Session session;
  final bool favorite;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  final Color inActiveColor;

  FavoriteButton({
    Key key,
    @required this.session,
    @required this.favorite,
    @required this.onChanged,
    this.activeColor,
    this.inActiveColor,
  })
      : super(key: key);

  @override
  _FavoriteButtonState createState() => new _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  
  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      value: 1.0,
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  
  @override
  void didUpdateWidget(FavoriteButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.favorite != widget.favorite) {
      animationController.stop();
      animationController.forward(from: 0.0);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    final Widget child = new IconButton(
      icon: (widget.favorite
          ? new Icon(
              Icons.favorite,
              color: widget.activeColor != null
                  ? widget.activeColor
                  : theme.primaryColor,
            )
          : new Icon(
              Icons.favorite_border,
              color: widget.inActiveColor != null
                  ? widget.inActiveColor
                  : Colors.grey[500],
            )),
      onPressed: () {},
    );
    
    return new ScaleTransition(
      scale: new CurvedAnimation(
        parent: animationController,
        curve: Curves.elasticOut,
      ),
      child: child,
    );
  }
}
