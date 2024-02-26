import 'package:args/args.dart';

final result = ArgParser()
              ..addFlag('ping')
              ..addFlag('peng');

void main(List<String> args) {

  final 
    parser = result.parse(args)
    ,
    pingCondition =
      (result.options.keys.first == parser.arguments.first);

  if (parser.arguments.isNotEmpty && pingCondition) {
    print("pong");
  }

}
