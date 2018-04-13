require_relative 'appletree'
RSpec.describe Appletree do
    before (:each) do
        @first_tree = Appletree.new(5, 1, 29)
    end
    it 'getter for age attribute' do
        expect(@first_tree.age).to eq(5)
    end

    it 'displays age but will raise error if user tries to change it' do
        expect(@first_tree.height).to eq(1)
        expect{@first_tree.height = 5}.to raise_error(NoMethodError)
    end

    it 'displays apple count, should not be changed by user' do
        expect(@first_tree.apple_count).to eq(29)
        expect{@first_tree.apple_count = 50}.to raise_error(NoMethodError)
    end

end