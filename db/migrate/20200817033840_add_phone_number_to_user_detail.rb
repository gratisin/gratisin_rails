class AddPhoneNumberToUserDetail < ActiveRecord::Migration[6.0]
  def change
    add_column :user_details, :phone_number, :string
  end
end
