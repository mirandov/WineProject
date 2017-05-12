module WineSortsHelper
  def wine_sort_options()
    WineSort.all.pluck('name,type_of_wine,color, id')
  end
end
