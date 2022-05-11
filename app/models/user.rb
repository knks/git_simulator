class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, length: { minimum: 4 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presense: true, if: -> { new_record? || changes[:crypted_password] }

  validates :name, uniqueness: true, presense: true
end
