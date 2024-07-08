import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/capitalize.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class TripTallyProgressIndicator extends StatefulWidget {
  const TripTallyProgressIndicator({super.key});

  @override
  TripTallyProgressIndicatorState createState() => TripTallyProgressIndicatorState();
}

class TripTallyProgressIndicatorState extends State<TripTallyProgressIndicator> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _iconAnimation;
  bool _showIcon = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat();

    _iconAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.6, 1, curve: Curves.easeInOut),
      ),
    );

    _controller
      ..addListener(() {
        if (_controller.value >= 0.5 && !_showIcon) {
          setState(() {
            _showIcon = true;
          });
        } else if (_controller.value < 0.5) {
          setState(() {
            _showIcon = false;
          });
        }
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller
            ..reset()
            ..forward();
        }
      })
      ..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TypingText(
                text: context.tr.appName.capitalize(),
                controller: _controller,
              ),
              if (_showIcon)
                AnimatedBuilder(
                  animation: _iconAnimation,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(0, -100 * _iconAnimation.value),
                      child: Icon(
                        Icons.flight,
                        size: AppDimensions.d36,
                        color: context.thc.onSurface,
                      ),
                    );
                  },
                )
              else
                const SizedBox(
                  height: AppDimensions.d36,
                  width: AppDimensions.d36,
                ),
            ],
          ),
          const SizedBox(height: AppDimensions.d20),
          LinearProgressIndicator(
            borderRadius: BorderRadius.circular(AppDimensions.d32),
          ),
          const SizedBox(height: AppDimensions.d20),
        ],
      ),
    );
  }
}

class TypingText extends StatefulWidget {
  const TypingText({
    required this.text,
    required this.controller,
    super.key,
  });

  final String text;
  final AnimationController controller;

  @override
  TypingTextState createState() => TypingTextState();
}

class TypingTextState extends State<TypingText> {
  late String _displayedText;

  @override
  void initState() {
    super.initState();
    _displayedText = '';
    widget.controller.addListener(_updateText);
  }

  void _updateText() {
    final progress = (widget.controller.value / 1.1 * widget.text.length * 2).round();
    if (progress <= widget.text.length) {
      setState(() {
        _displayedText = widget.text.substring(0, progress);
      });
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_updateText);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppDimensions.d46, right: AppDimensions.d16),
      child: Text(
        _displayedText,
        style: context.tht.headlineLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}
