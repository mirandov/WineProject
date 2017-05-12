module SideBarHelper
  def side_bar_items(ru)
    result = []


    result << {
      :name => 'Главная',
      :icon => 'bars',
      :controller => :welcome,
      :action => :index
    }

      result << {
        :name => 'Администрирование',
        :icon => 'users',
        :children => [
        {:name => 'Пользователи',
         :controller => :users, :action => :index,
         :icon => 'users',
         :class => 'long'},
        {:name => 'Добавление',
         :controller => :users, :action => :new,
         :icon => 'user-plus'},
        {:name => 'Роли',
         :controller => :roles, :action => :index,
         :icon => 'align-center',
         :class => 'long'},
      ]}
    
    result << {
      :name => 'Информация о вине',
      :icon => 'info-circle',
      :children => [
      {:name => 'Сорта вин',
       :controller => :wine_sorts, :action => :index,
       :icon => 'glass',
       :class => 'long'},
      {:name => 'Бочки',
       :controller => :barrels, :action => :index,
       :icon => 'trash',
       :class => 'long'}
    ]}
    result << {
      :name => 'Поиск',
      :icon => 'search',
      :controller => :barrels,
      :action => :search,
      :class => 'long'
      }
    result
  end

  def is_open?(ctr, act)
    case ctr.to_s
    when 'users', 'roles'
      ctr.to_s == controller_name.to_s
    else
      false
    end
  end
end
