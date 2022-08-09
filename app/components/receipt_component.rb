# frozen_string_literal: true

class ReceiptComponent < ViewComponent::Base
  def initialize(business_name:, user:, url:, upload_date:)
    @business_name = business_name
    @user = user
    @url = url
    @upload_date = upload_date
  end

end
