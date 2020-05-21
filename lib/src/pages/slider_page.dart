import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValState = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
            _createSliderW(),
            Expanded(child: _imageW())
          ],
        ),
      ),
    );
  }
  Widget _createSliderW() {
    return Slider(
      value: this._sliderValState,
      min: 40.0,
      max: 400.0,
      activeColor: Colors.indigoAccent,
      label: this._sliderValState.toString(),
      onChanged: (value){
        setState(() {
          this._sliderValState = value;
        });
      }
    );
  }

  Widget _imageW() {
    return Image(
      image: NetworkImage('https://i.pinimg.com/474x/d2/6d/fa/d26dfa3d978e5a0ddb876f4762d924a2.jpg'),
      width: this._sliderValState,
      fit: BoxFit.contain,
    );
  }
}
