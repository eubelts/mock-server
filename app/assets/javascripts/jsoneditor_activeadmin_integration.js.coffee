$ ->

  $('.jsoneditor-target').each ->

    target = $ this

    container = $('<div class="jsoneditor-container">')
      .insertAfter target

    editor = new JSONEditor container[0],
      modes: ['code', 'form', 'text', 'tree', 'view']
      onChange: ->
        target.val (editor.getText())

    editor.set(
      try
        JSON.parse target.val()
    )

    target.hide()

    # options =
    #   mode: 'code'
    #   onError: (err) ->
    #     alert err.toString()
    #     return
    #   onChange: ->
    #     try
    #       console.log JSON.stringify(editor.get())
    #     catch err
    #       console.error err
    #     return

# $ ->
#
#   $('.jsoneditor-target').each ->
#     target = $ this
#
#     if target.val() == '' then target.val('[]')
#     target.val(target.val().replace(/=>/g,':'))
#     container = $('<div class="jsoneditor-container">')
#     .insertAfter target
#     editor = new JSONEditor container[0],
#     modes: ['code', 'form', 'text', 'tree', 'view']
#     change: ->
#       target.val(JSON.stringify(editor.getText()))
#       editor.set(
#         try
#           JSON.parse target.val()
#       )
# target.hide()
