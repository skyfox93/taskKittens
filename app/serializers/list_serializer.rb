class ListSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :tasks
  attributes :id,:user,:title,:tasks
end
