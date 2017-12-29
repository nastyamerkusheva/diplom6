module PartOfCharacteristicsHelper
  def new_part(form)
    new_object = PartOfCharacteristic.new()
    fields = form.fields_for(:part_of_characteritics, new_object, 
      :child_index => 'new_part') do |builder|
      render('part_of_characteristics/new_part', fpa: builder)
    end
  end
end
