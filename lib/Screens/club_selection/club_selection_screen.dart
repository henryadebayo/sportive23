import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ClubSelectionScreen extends StatefulWidget {
  const ClubSelectionScreen({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ClubSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    const double radius = 50;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: 500,
          child: SkewedLayout(
            maxPerLine: 3,
            expanded: true,
            padding: EdgeInsets.all(0),
            children: [
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 80.0.h,
                width: 80.0.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
              ),
              Opacity(
                opacity: 0,
                child: CircleAvatar(radius: radius),
              ),
              Opacity(
                opacity: 0,
                child: CircleAvatar(radius: radius),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SkewedLayout extends StatefulWidget {
  const SkewedLayout(
      {Key key,
         this.children,
        this.maxPerLine,
        this.padding,
        this.lineSpacing = 20,
        this.childSpacing = 20,
        this.expanded = false})
      : super(key: key);

  final List<Widget> children;
  final int maxPerLine;
  final EdgeInsetsGeometry padding;
  final double lineSpacing;
  final double childSpacing;
  final bool expanded;

  @override
  _SkewedLayoutState createState() => _SkewedLayoutState();
}

class _SkewedLayoutState extends State<SkewedLayout> {
  @override
  Widget build(BuildContext context) {
    List<List<Widget>> groups = getChunks<Widget>(
        children: widget.children, chunkSize: widget.maxPerLine);

    return SingleChildScrollView(
      child: Padding(
        padding: widget.padding ?? EdgeInsets.zero,
        child:
        Column(
            mainAxisSize: MainAxisSize.min,
            children: groups
                .asMap()
                .map((groupIndex, group) => MapEntry(
                groupIndex,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisSize: widget.expanded
                            ? MainAxisSize.max
                            : MainAxisSize.min,
                        mainAxisAlignment: widget.expanded
                            ? MainAxisAlignment.spaceAround
                            : MainAxisAlignment.start,
                        children: group
                            .asMap()
                            .map((childIndex, value) => MapEntry(
                            childIndex,
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                value,
                                childIndex ==
                                    (groups[groupIndex].length -
                                        1) ||
                                    widget.expanded == true
                                    ? Container()
                                    : SizedBox(width: widget.childSpacing)
                              ],
                            )))
                            .values
                            .toList()),
                    SizedBox(height: widget.lineSpacing)
                  ],
                )))
                .values
                .toList()),
      ),
    );
  }
}

List<List<T>> getChunks<T>(
    {List<T> children, int chunkSize}) {
  List<List<T>> groups = [];

  int currentIndex = 0;
  bool reduceSize = true;

  while (currentIndex < children.length) {
    final int groupSize = reduceSize ? chunkSize - 1 : chunkSize;
    int endIndex = currentIndex + groupSize;
    groups.add(children.sublist(
        currentIndex, endIndex > children.length ? children.length : endIndex));

    currentIndex += groupSize;
    reduceSize = !reduceSize;
  }

  return groups;
}
