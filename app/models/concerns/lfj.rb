module Lfj
  extend ActiveSupport::Concern

    def load_from_json
      name = params[:js]
      # raise (name[:href]).inspect
      # JsonExample.new((name[:href]))
      je = JsonExample.test(name[:href])
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

end
