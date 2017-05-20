# save_form = ->
#   if ($('#wine_sort_relationships_attributes_0_grape_sort_id').val()   == '*Создание нового')
#     $('#wine_sort_relationships_attributes_0_grape_sort_id').remove()
#     $("#wine_sort_relationships_attributes_0_grape_sort_attributes_id").remove()
#   else if ($('#wine_sort_relationships_attributes_0_grape_sort_id').val() == '*Редактирование')
#     $('#wine_sort_relationships_attributes_0_grape_sort_id').remove()
# #
# insert_form = ->
#   f = $("#grape_sort-fieldset").attr("data-content")
#   if ($('#wine_sort_relationships_attributes_0_grape_sort_id').val() == '*Создание нового')
#     $("#grape_sort-fields").html(f)
#     $("#wine_sort_relationships_attributes_0_grape_sort_attributes_name").val('')
#     $("#wine_sort_relationships_attributes_0_grape_sort_attributes_place_of_growth").val('')
#     $("#wine_sort_relationships_attributes_0_grape_sort_attributes_date_of_collection").val('')
#   else if ($('#wine_sort_relationships_attributes_0_grape_sort_id').val() == '*Редактирование')
#     $("#grape_sort-fields").html(f)
#   else
#     $("#grape_sort-fields").html("Выбран существующий сорт виногрда")



# insert_form = ->
#   f = $("#grape_sort-fieldset").attr("data-content")
#   len = "#grape_sort-fields".length()
#   for i in [0 .. len]
#     str1 = '#wine_sort_relationships_attributes_'
#     str2 = '_grape_sort_id'
#     cnc = str1 + i + str2
#     if ($(cnc).val() == '*Создание нового')
#       $("#grape_sort-fields").html("www")
#     else
#       $("#grape_sort-fields").html("fff")
# 
# ready = ->
#   insert_form()
#   $("#wine_sort_relationships_attributes_0_grape_sort_id").change -> insert_form()
#   $('#save').on 'click', save_form
#
# $(document).ready ready
# $(document).on 'page:load', ready
