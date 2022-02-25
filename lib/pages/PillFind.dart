import 'package:flutter/material.dart';
import 'data_model.dart';
import 'repository.dart';
import 'loading_widget.dart';
import 'pill_tile.dart';
import 'menu.dart';
import 'package:dropdown_search/dropdown_search.dart';
class PillFind extends StatefulWidget {
  @override
  _PillFindState createState() => _PillFindState();
}

class _PillFindState extends State<PillFind> {
  List<Pill> _pills = <Pill>[];
  List<Pill> _pillsDisplay = <Pill>[];
  String enteredText= '';
  String selectedShape ='';
  String selectedColor ='';
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchPills().then((value) {
      setState(() {
        _isLoading = false;
        _pills.addAll(value);
        _pillsDisplay = _pills;
        print(_pillsDisplay.length);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:
        IconButton(
            tooltip: 'Back to Menu',
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => Menu() ));
            }, icon:Icon(Icons.arrow_back_rounded,color:Colors.black,size:30))
        ,
        actions: <Widget>[
          Center(child: IconButton(onPressed: (){}, icon: Image.asset('assets/images/map.png')))
        ],
        title: Center(child: Text('Pill identifier',style: TextStyle(color: Colors.black),)),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              if (!_isLoading) {
                return index == 0 ? Column(children: <Widget>[_searchBar(),_searchColor(),_searchShape()]) : PillTile(pill: this._pillsDisplay[index - 1]);
              } else {
                return LoadingView();
              }
            },
            itemCount: _pillsDisplay.length + 1,
          ),
        ),
      ),
    );
  }

 Widget _searchBar() {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: TextField(
        autofocus: false,
        onChanged: (searchText) {
          enteredText=searchText;
          enteredText = searchText.toLowerCase();
          setState(() {
            _pillsDisplay = _pills.where((u) {
              var fcolor = u.color.toLowerCase();
              var fName = u.name.toLowerCase();
              var fshape = u.shape.toLowerCase();
              return fshape.contains(selectedShape) & fName.contains(enteredText) & fcolor.contains(selectedColor);
            }).toList();
          });
        },
        // controller: _textController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.blueAccent)
          ),
          prefixIcon: Icon(Icons.search),
          hintText: 'Search Pills',
        ),
      ),

    );

  }
  Widget _searchShape() {
  return Padding(
    padding: EdgeInsets.all(12.0),
    child: DropdownSearch<String>(
    mode: Mode.MENU,
    items: ["Oblong", "Round", "Unidentified", 'Tube'],
    label: "Shape",
    hint: "Choose your pill shape..",
    onChanged: (searchShape) {
      selectedShape=searchShape!;
      selectedShape = searchShape.toLowerCase();
      setState(() {
        _pillsDisplay = _pills.where((u) {
          var fcolor = u.color.toLowerCase();
          var fName = u.name.toLowerCase();
          var fshape = u.shape.toLowerCase();
          return fshape.contains(selectedShape) & fName.contains(enteredText) & fcolor.contains(selectedColor);
        }).toList();
      });
    },
    )
  );
  }
  Widget _searchColor() {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: DropdownSearch<String>(
          mode: Mode.MENU,
          items: ["White", "Pink", "Yellow", 'Mint',"Orange","Black","Buff","Purple"],
          label: "Color",
          hint: "Choose your pill color",
          onChanged: (searchColor) {
            selectedColor=searchColor!;
            selectedColor = searchColor.toLowerCase();
            setState(() {
              _pillsDisplay = _pills.where((u) {
                var fcolor = u.color.toLowerCase();
                var fName = u.name.toLowerCase();
                var fshape = u.shape.toLowerCase();
                return fshape.contains(selectedShape) & fName.contains(enteredText) & fcolor.contains(selectedColor);
              }).toList();
            });
          },),
    );}
}
// (searchText) {
// enteredText = searchText.toLowerCase();
// setState(() {
// _pillsDisplay = _pills.where((u) {
// var fName = u.name.toLowerCase();
// return fName.contains(searchText);
// }).toList();
// });
// },