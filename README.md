coffee-cmd
==========

CoffeeScript port of the python cmd module.

# How to Use
The Cmd class is not very useful by itself, but it
is designed to provide a base class that can be extended
for desired functionality.

When a command is received, the method do\_\<command\> is
invoked with the command arguments as a list of strings.
Lines starting with ? or help will invoke the do\_help
method, and ?\<command\> will invoke the method help\_\<command\>

## Basic Usage
Define your subclass of cmd.Cmd:  

    cmd = require './cmd'
    
    class DemoApp extends cmd.Cmd
      do_somecommand: (args) ->
        console.log "somecommand has been invoked!"
        
      help_somecommand: () ->
        console.log "Explains how to use 'somecommand'"
    
    new DemoApp().cmdloop()
    
Run the Application:

    $ coffee myapp.coffee
    > somecommand
    somecommand has been invoked!
    > ?somecommand
    Explains how to use 'somecommand'
    
##Advanced Features
More advanced modification can be attained by updating class variables and functions.

###Variables
@prompt - The string to display as the command prompt.  
@lastcmd - A string containing the last issued command.  

###Methods
  @default - Method called when an unknown command is encountered.  
  @emptyline - Method called when an empty line is encountered. Default behavior is to re-issue the previous command received.  
  

