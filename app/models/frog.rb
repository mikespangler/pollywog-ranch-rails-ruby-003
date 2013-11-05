class Frog < ActiveRecord::Base
  # Write the appropriate ActiveRecord associatons 
  # for this model to match the the relationships 
  # described in the README.md file.
 belongs_to :pond
 has_many :tadpoles
end