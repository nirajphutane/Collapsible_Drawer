import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CollapsibleDrawer extends StatefulWidget {
  
  List group1, group2;
  Function onSelectGroup1, onSelectGroup2;
  CollapsibleDrawer(this.group1, this.onSelectGroup1, this.group2, this.onSelectGroup2);

  @override
  _CollapsibleDrawerState createState() => _CollapsibleDrawerState();
}

class _CollapsibleDrawerState extends State<CollapsibleDrawer> with TickerProviderStateMixin {

  double colasWidth, expandedWidth;
  int delay = 1000;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: MediaQuery.of(context).size.width * 0.15 + (isExpanded? MediaQuery.of(context).size.width * 0.5: 0),
      duration: Duration(milliseconds: delay),
      child: Padding(
        padding: EdgeInsets.only(top: AppBar().preferredSize.height + MediaQuery.of(context).padding.top),
        child: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 150,
                color: Color(0xFF38485A),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: double.infinity,
                      child: FlutterLogo(),
                    ),
                    AnimatedContainer(
                      width: (isExpanded? MediaQuery.of(context).size.width * 0.5: 0),
                      duration: Duration(milliseconds: delay),
                      child: AnimatedOpacity(
                          duration: Duration(milliseconds: delay),
                          opacity: isExpanded? 1: 0,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(color: Colors.white, width: 1, height: 70),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Niraj Phutane', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center, maxLines: 1, overflow: TextOverflow.ellipsis),
                                    Text('A Flutter Developer', style: TextStyle(color: Colors.white), textAlign: TextAlign.center, maxLines: 1, overflow: TextOverflow.ellipsis),
                                  ],
                                )
                              ),
                            ],
                          )
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Color(0xFF1B2F44),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: widget.group1.length,
                          itemBuilder: (BuildContext context, int index) {
                            return  ListTile(
                              leading: widget.group1[index]['Icon'],
                              title: AnimatedOpacity(
                                duration: Duration(milliseconds: delay),
                                opacity: isExpanded? 1: 0,
                                child: Text(widget.group1[index]['Title'], style: TextStyle(color: Colors.white), maxLines: 1, overflow: TextOverflow.ellipsis),
                                // child: SingleChildScrollView(
                                //     scrollDirection: Axis.horizontal,
                                //     child: Text(widget.group1[index]['Title'], style: TextStyle(color: Colors.white), maxLines: 1, overflow: TextOverflow.ellipsis)
                                // )
                              ),
                              onTap: (){
                                widget.onSelectGroup1(index);
                              },
                            );
                          }
                        ),
                        Divider(color: Colors.white, height: 0.1),
                        ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: widget.group2.length,
                          itemBuilder: (BuildContext context, int index) {
                            return  ListTile(
                              leading: widget.group2[index]['Icon'],
                              title: AnimatedOpacity(
                                duration: Duration(milliseconds: delay),
                                opacity: isExpanded? 1: 0,
                                child: Text(widget.group2[index]['Title'], style: TextStyle(color: Colors.white), maxLines: 1, overflow: TextOverflow.fade)
                              ),
                              onTap: (){
                                widget.onSelectGroup2(index);
                              },
                            );
                          }
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.white, height: 0.1),
              Container(
                height: 50,
                alignment: Alignment.centerRight,
                color: Color(0xFF38485A),
                child: AnimatedSwitcher(
                  switchInCurve: Curves.easeInCirc,
                  switchOutCurve: Curves.easeOutCirc,
                  duration: Duration(milliseconds: delay),
                  child: GestureDetector(
                    key: UniqueKey(),
                    child: Icon(isExpanded? Icons.keyboard_arrow_left: Icons.keyboard_arrow_right, size: 40, color: Colors.white),
                    onTap: (){
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}