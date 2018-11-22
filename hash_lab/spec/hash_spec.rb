require_relative 'spec_helper'

describe 'Create tests for a hash' do

  small_fruit_nutrition_details = {
      apple:{
          calories: 130,
          calories_from_fat: 0,
          sugars: '25g',
          protein: '1g'

      },
      avocado:{
          calories: 50,
          calories_from_fat: 35,
          sugars: '0g',
          protein: '1g'

      },
      kiwifruit:{
          calories: 90,
          calories_from_fat: 10,
          sugars: '13g',
          protein: '1g'

      },
      plums:{
          calories: 70,
          calories_from_fat: 0,
          sugars: '16g',
          protein: '1g'

      }
  }

  it 'avocados should have calories from fat great than 20' do
    expect(small_fruit_nutrition_details[:avocado][:calories]).to be > 20
  end

  it 'plums and apples should get no calories from fat' do
    expect(small_fruit_nutrition_details[:apple][:calories_from_fat]).to be 0
    expect(small_fruit_nutrition_details[:plums][:calories_from_fat]).to be 0
  end

  it 'each fruit should have 4 keys' do
    # use .keys to create array of only keys

    num_of_keys = []
    small_fruit_nutrition_details.each_value{|value| num_of_keys << value.length}

    expect(num_of_keys.uniq).to eq [4]
  end

  it 'all calories should be between 40 to 150' do
    @flag = true
    small_fruit_nutrition_details.each_value{|value|
    puts value[:calories]
    if value[:calories] > 150
      @flag = false
    elsif value[:calories] < 40
      @flag = false
    end}

    expect(@flag).to eq true

  end

end
