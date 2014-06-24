import 'package:react/react.dart';
import 'package:react/react_server.dart' as react;

void main() {
  print('Main started');
  react.setServerConfiguration();
  var l = [1,2,3];
  //this is ok
  var c1 = div({}, l.map((i) => div({'style':{'background-color':'blue'}},'$i')).toList());
  print(renderComponentToString(c1));
  print('string and lists works');
  //intigers dont work
  var c2 = div({}, div({}, 5));
  print(renderComponentToString(c2));
  print('integers works');
  //iterables dont work
  var c3 = div({}, l.map((i) => div({},'$i')));
  print(renderComponentToString(c3));
  print('iterables works');
}
