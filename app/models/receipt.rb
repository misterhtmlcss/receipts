class Receipt < ApplicationRecord
  enum :user, { adriana: 0, roger: 1, edward: 2, arya: 3 }
end
