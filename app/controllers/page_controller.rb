class PageController < ApplicationController
  def index
  end

  def service
    @lis = [
      'Brak obrazu', 'Odzyskiwanie danych', 'Przywracanie ustawień fabrycznych',
      'Windows Vista, 7, 8, 10', 'Naprawa telefonów komórkowych',
      'Transfer danych', 'Usuwanie Spyware', 'iPhone / iPad / iPod',
      'Naprawa Mac-ów', 'Naprawa Tabletów', 'Instalowanie oprogramowania',
      'Problemy z drukarką', 'Problemy z ładowaniem', 'Mac OS X',
      'Upgrade', 'Problemy z Audio'
    ]
  end

  def contact
  end

  def comments
  end
end
