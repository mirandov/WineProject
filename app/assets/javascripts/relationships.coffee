# nested_start
# Удаление одной роли
@delete_one_wg = (link)->
  if confirm("Вы уверены?")
    link.parent().find("input[type=hidden].remove_fields").first().val("1")
    link.parent().parent().parent().parent().hide()
# Включаем все кнопки удаления
@del_all_wgs = ->
  $('a.remove_grape_sort').on 'click', ->
    window.delete_one_wg($(this))
    false
  false
# Для форм
@for_all_insert_forms = ->
  $('.panel-success').each ->
    grape_select = $(this).children().find('select')
    f = $(this).children().find(".grape_sort-fieldset").attr("data-content")
    g = $(this).children().find('.grape_sort-fields')

    if (grape_select.val() == '*Создание нового')
      g.html(f)
      window.datepicker_activation_by_item(g)
    else if (grape_select.val() == '*Редактирование')
      g.html(f)
    else
      g.html("Выбран существующий сорт винограда")

    grape_select.on 'change', ->
      if ($(this).val() == '*Создание нового')
        g.html(f)
        window.datepicker_activation_by_item(g)
      else if ($(this).val() == '*Редактирование')
        g.html(f)
      else
        g.html("Выбран существующий сорт винограда")
@insert_form = (panel)->
  grape_select = panel.children().find('select')
  f = $(".grape_sort-fieldset").attr("data-content")
  g = panel.children().find('.grape_sort-fields')
  if (grape_select.val() == '*Создание нового')
    g.html(f)
    window.datepicker_activation_by_item(g)
  else if (grape_select.val() == '*Редактирование')
    g.html(f)
  else
    g.html("Выбран существующий сорт винограда")

  grape_select.on 'change', ->
    if ($(this).val() == '*Создание нового')
      g.html(f)
      window.datepicker_activation_by_item(g)
    else if ($(this).val() == '*Редактирование')
      g.html(f)
    else
      g.html("Выбран существующий сорт винограда")


# Включаем кнопку добавления роли
@add_new_wg = ->
  $('#add_grape_sort_link').on 'click', ->
    # Подменяем временный id с фразой new_ru на случайной число
    new_id = new Date().getTime()
    regexp = new RegExp("new_grape_sort", "g")
    content = $(this).attr('data-content')
    content = content.replace(regexp, new_id)
    # Вставляем на страницу
    $(this).parent().parent().after(content)
    panel = $(this).parent().parent().parent().find('.panel-info').first()

    # Работа с nested-2:
    insert_form(panel)

    # Если бы были даты с datepicker-ом
    # window.datepicker_activation_by_item(panel)
    # Включаем у новой роли кнопку удаления
    # Её раньше не было, поэтому при зарузке страницы она не включалась
    panel.find('a.remove_grape_sort').on 'click', ->
      window.delete_one_wg($(this))
      false
    false
# Запуск всего вышеописанного
wg_ready = ->
  window.add_new_wg()
  window.del_all_wgs()
  for_all_insert_forms()
$(document).on 'page:load', wg_ready # Включаем при ajax обновлении страницы
$(document).ready wg_ready # Включаем при обычном обновлении страницы
# nested_finish
