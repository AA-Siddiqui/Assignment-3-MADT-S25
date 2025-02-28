import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GetSize extends StatefulWidget {
  final Widget child;
  final ValueChanged<Size> onChildSize;

  const GetSize({
    super.key,
    required this.child,
    required this.onChildSize,
  });

  @override
  State<GetSize> createState() => _GetSizeState();
}

class _GetSizeState extends State<GetSize> {
  @override
  Widget build(BuildContext context) {
    return _SizeTracker(
      onSizeChanged: widget.onChildSize,
      child: widget.child,
    );
  }
}

class _SizeTracker extends SingleChildRenderObjectWidget {
  const _SizeTracker({
    required this.onSizeChanged,
    required Widget super.child,
  });

  final ValueChanged<Size> onSizeChanged;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _SizeTrackingRenderObject(onSizeChanged);
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant _SizeTrackingRenderObject renderObject) {
    renderObject.onSizeChanged = onSizeChanged;
  }
}

class _SizeTrackingRenderObject extends RenderProxyBox {
  _SizeTrackingRenderObject(this.onSizeChanged);

  ValueChanged<Size> onSizeChanged;
  Size? _previousSize;

  @override
  void performLayout() {
    super.performLayout();
    if (size != _previousSize) {
      _previousSize = size;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        onSizeChanged(size);
      });
    }
  }
}
