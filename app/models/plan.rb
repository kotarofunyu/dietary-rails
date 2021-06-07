# == Schema Information
#
# Table name: plans
#
#  id          :bigint           not null, primary key
#  description :text(65535)      not null
#  title       :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Plan < ApplicationRecord
end
