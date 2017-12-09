module CharacteristicsHelper
  def link_to_add_characteristic(form, person)
    new_object = Characteristic.new()
    fields = form.fields_for(:characteristics, new_object,
      :child_index => 'new_characteristic') do |builder|
      render('characteristics/add_characteristic', fn: builder)
    end
    link_to(?#, class: 'btn mbottom20 btn-info',
        id: 'add_characteristic_link', data: {content: "#{fields}"}) do
      fa_icon("plus") + " Новая характеристика"
    end
  end

  def link_to_remove_characteristic(form)
    form.hidden_field(:_destroy, class: 'remove_fields') +
        link_to(?#, class: 'remove_fields remove_characteristic') do
      fa_icon('times', title: 'Удалить характеристику') + ' Удалить'
    end
  end
end
