# # Place all the behaviors and hooks related to the matching controller here.
# # All this logic will automatically be available in application.js.
# # You can use CoffeeScript in this file: http://coffeescript.org/
# @delete_one_wine = (link)->
#   if confirm("Вы уверены?")
#     link.parent().find("input[type=hidden].remove_fields").first().val("1")
#     link.parent().parent().parent().parent().hide()
# # Включаем все кнопки удаления
# @delete_one_wines = ->
#   $('a.remove_wine_sort').on 'click', ->
#     window.delete_one_wine($(this))
#     false
#   false
# # Включаем кнопку добавления роли
# @add_new_wine = ->
#   $('#add_wine_sort_link').on 'click', ->
#     # Подменяем временный id с фразой new_ru на случайной число
#     newid = new Date().getTime()
#     reg = new RegExp("new_wine_sort", "g")
#     cont = $(this).attr('data-content')
#     cont = cont.replace(reg, newid)
#     # Вставляем на страницу
#     $(this).parent().parent().after(cont)
#     pan = $(this).parent().parent().parent().find('.panel-info').first()
#     pan.find('a.remove_wine_sort').on 'click', ->
#       window.delete_one_wine($(this))
#     false
#   false
# # Запуск всего вышеописанного
# wine_ready = ->
#   window.add_new_wine()
#   window.delete_one_wines()
# $(document).on 'page:load', wine_ready # Включаем при ajax обновлении страницы
# $(document).ready wine_ready # Включаем при обычном обновлении страницы
# # nested_finish
#
# # nested_finish
