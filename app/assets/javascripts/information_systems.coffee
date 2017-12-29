# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@del_characteristic_body_f = (link)->
  if confirm("Вы уверены?")
    link.parent().find("input[type=hidden].remove_fields").first().val("1")
    link.parent().parent().parent().parent().hide()
  false
@del_characteristic_f = ->
  $('a.remove_characteristic').on 'click', ->
    window.del_characteristic_body_f($(this))
    false
  false
@load_from_json_body_f = (link)->

  $(".parse a").on 'click', ->
    obj = $(this).parent().parent().find("[id$='address_id']");
    val = obj.val()
    url = $(this).data('url')
    oid = obj.attr('id')
    $.post(url, { address_id: val, oid: oid })
    false
  false
@load_from_json_f = ->
  $(".parse").on 'click', ->
    window.load_from_json_body_f($(this))
    false
  false
@add_characteristic_f = ->
  $('#add_characteristic_link').on 'click', ->
    new_id = new Date().getTime()
    regexp = new RegExp("new_characteristic", "g")
    content = $(this).attr('data-content')
    content = content.replace(regexp, new_id)
    $(this).parent().parent().after(content)
    panel = $(this).parent().parent().parent().find('.panel-info').first()

    panel.find('a.remove_characteristic').on 'click', ->
      window.del_characteristic_body_f($(this))

    panel.find(".parse a").on 'click', ->
      window.load_from_json_body_f($(this))
      false
    false

# @load_from_json_is_information_f = ->
#   $(".parse a").on 'click', ->
#     val = $(this).parent().parent().find("[name $= 'address']").val()
#     url = $(this).data('url')
#     $.post(url, { address: val })



@characteristics_ready_f = ->
  window.add_characteristic_f()
  window.del_characteristic_f()

$(document).on 'turbolinks:load', @characteristics_ready_f
$(document).on 'turbolinks:load', @load_from_json_is_information_f
