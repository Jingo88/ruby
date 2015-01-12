require 'pry'
# array of monsters
# array of weapons
# array of attacks
# random weapon attack damage
# run or fight
# experience points and levels
# hp points and levels


hero = {
	'atkSpd' => 8
	'level' => 1
	'health' => 10
}


enemy = {

}

monsters = ['Mutated Octopus', 'Sabertooth Goldfish', 'Lady Gaga', 'Hannah Montana']
monsterAtk = ['Slap', 'Bite', 'Eyepoke']
monsterDmg = ''

# bring the values into monsterfight. 
def monsterfight(user, monster, mAtk)
	enemy = {}

	enemy['name'] = monster.sample

	if enemy['name'] == 'Mutated Octopus'
		enemy['hp'] = 7
		enemy['atkSpd'] = 6
		enemy['armor'] = 1

	elsif enemy['name'] == 'Sabertooth Goldfish'
		enemy['hp'] = 6
		enemy['atkSpd'] = 5
		enemy['armor'] = 1

	elsif enemy ['name'] == 'Lady Gaga'
		enemy['hp'] = 8
		enemy['atkSpd'] = 8
		enemy['armor'] = 1

	elsif enemy ['name'] == 'Hannah Montana'
		enemy['hp'] = 10
		enemy['atkSpd'] = 10
		enemy['armor'] = 1

	end

	puts ''

	def monsterAttack

		randAttack = mAtk.sample

		if randAttack == 'Slap'
			monsterDmg = 1
			user['health'] -= 1

		elsif randAttack == 'Bite'
			monsterDmg = 2
			user['health'] -= 1

		elsif randAttack == 'Eyepoke'
			monsterDmg = 3
			user['health'] -= 1
		end

	end

	def heroAttack

		heroAttack = user['weapon']

		if heroAttack == 'Sword'
			hitDmg = 1
			enemy['hp'] -= hitDmg

		elsif heroAttack == 'Spear'
			hitDmg = 2
			enemy['hp'] -= hitDmg

		elsif heroAttack == 'Axe'
			hitDmg = 3
			enemy['hp'] -= hitDmg
		end

	end

	def fight
		if 
		# if you are fighting take the monsters health and take the users health. 
		# choose a random monster attack, give each attack different damage. 
		# make the damage subtract from the user health. 
	end

	puts "A wild #{enemy['name']} has appeared. Do you choose to fight or run? (enter the command fight or run)"

	choice = gets.chomp.downcase

	if choice == 'fight'
		puts 'Alright lets do this!'
		fight

	elsif choice == 'run'
		puts 'You attempt to escape'

	else 
		puts 'Please enter "fight" or "run"'
		choice = gets.chomp.downcase
	end

end


# Jasons-MacBook-Air:ruby Jason$ pry
# [1] pry(main)> a = {}
# => {}
# [2] pry(main)> def blah(h)
# [2] pry(main)*   h["foo"] = "bar"
# [2] pry(main)* end  
# => :blah
# [3] pry(main)> blah(a)
# => "bar"
# [4] pry(main)> a
# => {"foo"=>"bar"}
# [5] pry(main)> 

puts "Welcome Adventurer, state your name if intend to join this quest"

hero["name"] = gets.chomp.capitalize

puts "Hello #{hero["name"]} let us slay! Choose your weapon, I have a sword, or spear, or axe"

hero["weapon"] = gets.chomp.capitalize

if hero['weapon'] == 'Sword'
	hero['atkrange'] = '2 to 5'

elsif hero['weapon'] == 'Spear'
	hero['atkrange'] = '1 to 6'

elsif hero['weapon'] == 'Axe'
	hero['atkrange'] = '3 to 4'

else
	puts "I do not have that in my inventory, please choose a sword, or spear, or axe"

end

puts hero

puts "Your weapon of choice is the #{hero['weapon']} your attack damage range is #{hero['atkrange']}"
puts "Your current health is #{hero['health']}"

puts ""

puts "Alright #{hero['name']} you are now prepared to venture the wilderness with me, let us depart"

monsterfight(hero,monsters,monsterAtk)























