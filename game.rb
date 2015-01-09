require 'pry'
# array of monsters
# array of weapons
# array of attacks
# random weapon attack damage
# run or fight
# experience points and levels
# hp points and levels
puts self
hero = {
	'health' => 10
}


enemy = {

}

monsters = ['Mutated Octopus', 'Sabertooth Goldfish', 'Lady Gaga', 'Hannah Montana']
monsterAtk = ['Slap', 'Bite', 'Eyepoke']
monsterDmg = ''

# def randommonster
# 	monsters = ['Mutated Octopus', 'Sabertooth Goldfish', 'Lady Gaga', 'Hannah Montana'].sample
# 	puts monsters
# end

# choosing the random monster, must push their stats into the monster hash

def monsterfight
	binding.pry
	puts self
	# puts randommonster
	puts 'WE ARE IN MONSTERFIGHT '
	enemy["type"] = monsters.sample

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


# choosing the random attack of the monster. no need to push into a hash
def monsterAttack

	randAttack = Random.rand(monsterAtk.length).to_i

	if randAttack == 0
		monsterDmg = 1
		hero['health'] -= 1

	elsif randAttack == 1
		monsterDmg = 2

	elsif randAttack == 2
		monsterDmg = 3

	end
end


# random monster does random attack for random damage, you now have x amount of health left
# do you choose to continue fighting? (yes or no);

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

# randommonster

monsterfight

puts monsters

puts hero

# puts monster






















