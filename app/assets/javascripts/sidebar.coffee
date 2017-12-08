ready = ->
  # alert("hi");
  # $("#sidebar-toggle").on 'click', ->
  #   id=$(this).children('.sidebar-toggle').attr 'href'
  #   $(id).toggleClass 'toggled'
  #   false


$(document).on('turbolinks:load') ready()
