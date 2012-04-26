cmd = require './cmd'

class MyApp extends cmd.Cmd
  constructor: () ->
    @prompt = ">>> " 
    @intro = 
    """

      ************************************************
      * node.js cmd interface demo application.      *
      ************************************************

    """

  emptyline: () ->
    null

  do_mycmd: (toks) ->
    console.log "Got mycmd with args #{toks}"

  help_mycmd: () ->
    console.log "Help text for mycmd"

new MyApp().cmdloop()
