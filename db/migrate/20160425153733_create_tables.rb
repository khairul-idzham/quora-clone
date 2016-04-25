class CreateTables < ActiveRecord::Migration
	def change
		create_table :users do |x|
			x.string :username
			x.string :encrypted_password
			x.string :email
			x.timestamps null: false
		end

		create_table :questions do |x|
			x.string :user_id
			x.string :question_title
			x.string :question_desc
			x.timestamps null: false
		end

		create_table :answers do |x|
			x.string :question_id
			x.string :user_id
			x.string :answer
			x.timestamps null: false
		end
end
