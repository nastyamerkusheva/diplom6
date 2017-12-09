class WelcomeController < ApplicationController
  def index
  end

  def load_from_json
    name = params[:js]
    # raise (name[:href]).inspect
    # JsonExample.new((name[:href]))
    je = JsonExample.test
    my_parse(je)
end
  end

def my_parse (array)
  # raise (array[0])
  @poc = []
  array.each do |poc|
    poc.keys.each do |k|
      @poc<< k
    end
  end
   @poc.uniq!
   @poc.inspect


end
#   def my_parse (array)
#     Weight.delete_all
#     CharacteristicValue.delete_all
#     PartOfCharacteristic.delete_all
#     Characteristic.delete_all
#     # k1 = (array[0])
#     # raise k1.inspect
#     # raise (k1["type"]).inspect
#
#             # Characteristic.create([{ name: k1["type"], information_system_id:1, type_of_data:1, result_type:1,address_id:1}] )
#     char = []
#     hash = {}
# num = 0
#     array.each do |h|
#       if num > 20
#         break
#       end
#         if !(char.include?(h["type"]))
#             char <<  h["type"]
#             id =  (Characteristic.create([{ name:   h["type"], information_system_id: 1, type_of_data: 1, result_type: 1,address_id: 1}]))[0]
#             id = id.id
#             keys = h.keys
#             t= 1
#             keys.each do |k|
#                 if (k!="type") and (k!="step")
#                   unless hash.has_key?(id)
#                     hash[id] = {}
#                   end
#               hash[id][k] =      PartOfCharacteristic.create([{characteristic_id: id, pid: t, part_name: k, weight: false, default_weight: "1"}])
#                 end
#                 t+=1
#             end
#         else
#            (id =  ((Characteristic.where(name: h['type']))[0]).id)
#         end
#         keys = h.keys
#             keys.each do |k|
#                 t= 1
#                 if (k!="type") and (k!="step")
#                     part_id = hash[id][k][0].id
#                     CharacteristicValue.create([{part_of_characteristic_id: part_id, person_id: 1,  value: h[k], vdate: Date.new,  vtime: Time.new }])
#                     num+=1
#                 end
#             end
#         end
#   end
# end
      #       keys = (h).key1
      #   # if !keys.nil?
      #   #   keys.each do |k|
      #   #     if k==("type")
      #   #     end
      #   #   end
      #   # end
      #






  # char.each do |c|
  #   Characteristic.create([{ name:  c, information_system_id:1, type_of_data:1, result_type:1,address_id:1}] )
  #
  # end
  # def characteristic_params
  #   params.require(:characteristic).permit(:name, :information_system_id, :type_of_data, :result_type, :address_id)
