
$ ->

  $('form.new-computer-form').on 'ajax:error', ->
    alert 'Something went wrong'
