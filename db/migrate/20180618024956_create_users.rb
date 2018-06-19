class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :password_digest
    	t.string :loved_ones_name
    	t.string :date_of_loved_ones_death

      t.timestamps
    end
  end
end
	params.require(:user).permit(:first_name, :last_name, :email )
#:loved_ones_name, :date_of_loved_ones_death