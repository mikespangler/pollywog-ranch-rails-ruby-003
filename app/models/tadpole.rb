class Tadpole < ActiveRecord::Base
  # Write the appropriate ActiveRecord associatons 
  # for this model to match the the relationships 
  # described in the README.md file.
  belongs_to :frog
end