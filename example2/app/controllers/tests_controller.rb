require 'active_support/core_ext/object/json.rb'

class TestsController < ApplicationController
  def index
    puts "----------------------------------------------------"
    data = {
            "id" => 5, 
            "name" => "tama2",
            "item1" => "value1",
            "item2" => 
                  [
                  { 
                    "item2-1" => "value2-1",
                    "item2-2" => "value2-2",
                    "item2-3" => "value2-3"
                  },
                  { 
                    "item2-4" => "value2-4",
                    "item2-5" => "value2-5"
                  }
                  ],
            "item3" => {
                    "item3-1" => "value3-1",
                    "item3-2" => "value3-2",
                  } 
           }
    json = ActiveSupport::JSON.encode(data)
    puts json
    puts "----------------------------------------------------"
    obj = ActiveSupport::JSON.decode(json)
    puts obj
    puts "----------------------------------------------------"
    puts "name = #{obj['name']}"
    puts "item3.item3-1 = #{obj['item3']['item3-1']}"
    puts "----------------------------------------------------"
  end
end
