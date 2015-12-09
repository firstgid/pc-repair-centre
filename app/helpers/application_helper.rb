module ApplicationHelper
  def full_title(ext='')
    base_title = 'PC REPAIR CENTRE'
    if ext.empty?
      x = ['hello- ', 'Ciao- ', 'Hola- ', 'Bonjour- ', 'Salve- ', 'Ahoj- '].shuffle[0]
      x + base_title
    else
      title = ext + ' ' + base_title
    end
  end
end
