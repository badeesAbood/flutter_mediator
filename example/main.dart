import 'package:mediator/mediator.dart';

import 'createUserCommand/create_user_command.dart';
import 'createUserCommand/create_user_command_handler.dart';



void main() {
  final mediator = Mediator();

  // Register handlers
  final CreateUserCommandHandler handler = CreateUserCommandHandler();

  mediator.registerCommandHandler(handler);

  // Send command
  final result =
      mediator.sendCommand(CreateUserCommand('faraj', 'farajshuaib@gmail.com'));

  print(result.toString());
}
