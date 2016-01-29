require 'rspec'
require 'calculator'

describe Calculator do
	describe 'addition' do
		it 'does not care about the order numbers are added' do
			calc = Calculator.new
			expect(calc.add(5, 9)).to eq 14
			expect(calc.add(9, 5)).to eq 14
		end
		it 'does not change when you add 0' do
			calc = Calculator.new
			expect(calc.add(12, 0)).to eq 12
		end
	end
	
	describe 'subtraction' do
		it 'does care about the order numbers are subtracted' do
			calc = Calculator.new
			expect(calc.subtract(9, 5)).to eq 4
			expect(calc.subtract(5, 9)).to eq -4
		end
		it 'does not change when you subtract by 0' do
			calc = Calculator.new
			expect(calc.subtract(12, 0)).to eq 12
		end
	end
	
	describe 'multiplication' do
		it 'does not care about the order numbers are multiplied' do
			calc = Calculator.new
			expect(calc.multiply(9, 5)).to eq 45
			expect(calc.multiply(5, 9)).to eq 45
		end
		it 'does change when you multiply by 0' do
			calc = Calculator.new
			expect(calc.multiply(12, 0)).to eq 0
		end
	end
	
	describe 'division' do
		it 'does care about the order numbers are divided' do
			calc = Calculator.new
			expect(calc.divide(9.0, 5.0)).to eq 1.8
			expect(calc.divide(5.0, 9.0)).to eq 0.5555555555555556
		end
		it 'becomes an error when divided by 0' do
			calc = Calculator.new
			expect {calc.divide(12, 0)}.to raise_error
		end
	end
end


