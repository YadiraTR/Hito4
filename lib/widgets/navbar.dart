import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:h4_exa/constants/Theme.dart';

class Navbar extends StatefulWidget implements PreferredSizeWidget {
  final String categoryOne;
  final String categoryTwo;
  final bool searchBar;
  final bool backButton;
  final bool transparent;
  final bool rightOptions;
  final List<String> tags;
  final Function getCurrentPage;
  final bool isOnSearch;
  final TextEditingController searchController;
  final Function searchOnChanged;
  final bool searchAutofocus;
  final bool noShadow;
  final Color bgColor;

  Navbar(
      {this.categoryOne = "",
      this.categoryTwo = "",
      this.tags,
      this.transparent = false,
      this.rightOptions = true,
      this.getCurrentPage,
      this.searchController,
      this.isOnSearch = false,
      this.searchOnChanged,
      this.searchAutofocus = false,
      this.backButton = false,
      this.noShadow = false,
      this.bgColor = ArgonColors.white,
      this.searchBar = false});

  final double _prefferedHeight = 180.0;

  @override
  _NavbarState createState() => _NavbarState();

  @override
  Size get preferredSize => Size.fromHeight(_prefferedHeight);
}

class _NavbarState extends State<Navbar> {
  String activeTag;

  ItemScrollController _scrollController = ItemScrollController();

  void initState() {
    if (widget.tags != null && widget.tags.length != 0) {
      activeTag = widget.tags[0];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bool categories =
        widget.categoryOne.isNotEmpty && widget.categoryTwo.isNotEmpty;
    final bool tagsExist =
        widget.tags == null ? false : (widget.tags.length == 0 ? false : true);

    return Container(
        height: widget.searchBar
            ? (!categories
                ? (tagsExist ? 211.0 : 178.0)
                : (tagsExist ? 262.0 : 210.0))
            : (!categories
                ? (tagsExist ? 162.0 : 102.0)
                : (tagsExist ? 200.0 : 150.0)),
        decoration: BoxDecoration(
            color: !widget.transparent ? widget.bgColor : Colors.transparent,
            boxShadow: [
              BoxShadow(
                  color: !widget.transparent && !widget.noShadow
                      ? Colors.transparent
                      : Colors.transparent,
                  spreadRadius: -10,
                  blurRadius: 12,
                  offset: Offset(0, 5))
            ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          child: IconButton(
                              icon: Icon(Icons.drag_indicator,
                                  color: !widget.transparent
                                      ? (widget.bgColor == ArgonColors.white
                                          ? ArgonColors.initial
                                          : ArgonColors.white)
                                      : ArgonColors.white,
                                  size: 35.0),
                              onPressed: null),
                        ),
                        GestureDetector(
                          child: IconButton(
                              padding: const EdgeInsets.only(
                                  left: 255.0, right: 10.0),
                              icon: Icon(Icons.notifications,
                                  color: !widget.transparent
                                      ? (widget.bgColor == ArgonColors.white
                                          ? ArgonColors.initial
                                          : ArgonColors.white)
                                      : ArgonColors.white,
                                  size: 35.0),
                              onPressed: null),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                if (tagsExist)
                  Container(
                    height: 40,
                    child: ScrollablePositionedList.builder(
                      itemScrollController: _scrollController,
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.tags.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            if (activeTag != widget.tags[index]) {
                              setState(() => activeTag = widget.tags[index]);
                              _scrollController.scrollTo(
                                  index:
                                      index == widget.tags.length - 1 ? 1 : 0,
                                  duration: Duration(milliseconds: 420),
                                  curve: Curves.easeIn);
                              if (widget.getCurrentPage != null)
                                widget.getCurrentPage(activeTag);
                            }
                          },
                        );
                      },
                    ),
                  )
              ],
            ),
          ),
        ));
  }
}
