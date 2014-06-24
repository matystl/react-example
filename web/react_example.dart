import 'dart:html';
import 'package:react/react.dart';
import 'package:react/react_client.dart' as react;

void main() {
  print('Javascript started');
  react.setClientConfiguration();
  var l = [1,2,3];
  var c = div({}, l.map((i) => div({},i)));
  var mountNode = querySelector('#root');
  renderComponent(c, mountNode);
  print('iterables and integers works');
}