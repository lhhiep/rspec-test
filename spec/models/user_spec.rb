require 'rails_helper'

RSpec.describe User, type: :model do
  # it 'first name invalid' do
  #   user = User.create(
  #     first_name: nil,
  #     last_name: "test",
  #     email: "test@gmail.com",
  #     password: '123456'
  #   )

  #   user.valid?
  #   expect(user.errors[:first_name]).to include("can't be blank")
  # end

  # it 'last name invalid' do
  #   user = User.create(
  #     first_name: "test",
  #     last_name: nil,
  #     email: "test@gmail.com",
  #     password: '123456'
  #   )

  #   user.valid?
  #   expect(user.errors[:last_name]).to include("can't be blank")
  # end

  # it 'first name and last name invalid' do
  #   user = User.create(
  #     first_name: nil,
  #     last_name: nil,
  #     email: "test@gmail.com",
  #     password: '123456'
  #   )

  #   user.valid?
  #   expect(user.errors[:first_name]).to include("can't be blank")
  #   expect(user.errors[:last_name]).to include("can't be blank")
  # end

  # it 'first name and last name valid' do
  #   user = User.create(
  #     first_name: "test",
  #     last_name: "test",
  #     email: "test@gmail.com",
  #     password: '123456'
  #   )

  #   user.valid?
  #   expect(user.errors[:first_name]).to be_empty
  #   expect(user.errors[:last_name]).to eq([])
  # end

  # it 'email has already used' do
  #   user1 = User.create(
  #     first_name: "test",
  #     last_name: "test",
  #     email: "test@gmail.com",
  #     password: '123456'
  #   )

  #   user2 = User.create(
  #     first_name: "test",
  #     last_name: "test",
  #     email: "test@gmail.com",
  #     password: '123456'
  #   )

  #   user2.valid?
  #   expect(user2.errors[:email]).to include("has already been taken")
  # end

  it 'return full name' do
    user = User.create(
      first_name: "test",
      last_name: "test",
      email: "test@gmail.com",
      password: '123456'
    )

    user.name
    expect(user.name).to include("#{user.first_name} #{user.last_name}")

  end

end
