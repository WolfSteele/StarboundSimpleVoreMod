require "/scripts/vore/multivore.lua"

chest = "goodranormalchest"
legs = "goodranormallegs"

midchest = "goodranormalchestmid"
midlegs = "goodranormallegsmid"

fullchest = "goodranormalchestfull"
fulllegs = "goodranormallegsfull"

duration = 120

projectile	= "dragonvoreprojectile"
voreeffect = "dragonUB"

audio = false

smallLines = {	"Goodra Goodra! *It's the best hug!*",
				"Dra! *Mmm!*"
			}
			
medLines = {	"Goo, Dra *So cute!*",
				"Dra! Dra! *Hug! Hug!*",
				"Goodra! *I love you!*"
			}

largeLines = {	"Gooo! *Heavy!*",
				"Goodra Dra Goo. *You're squishing my insides.*",
				"Draaa!",
				"Dra Goo Goodra *This was a bad idea.*",
				"Goodra... *Be gentle...*"
			}
			
function initHook()
	
	if storage.shiny == nil and math.random(100) == 1 then
		storage.shiny = true
		makeShiny()
	elseif  storage.shiny == true then
		makeShiny()
	else
		storage.shiny = false
	end
	
end

function updateHook()

	if math.random(300) == 1 and ( playerTimer < duration or request[1] == true or request[2] == true or request[3] == true ) then
	
		if #victim == 1 then
			entity.say( smallLines[math.random(#smallLines)])
		elseif #victim == 2 then
			entity.say( medLines[math.random(#medLines)])
		elseif #victim == 3 then
			entity.say( largeLines[math.random(#largeLines)])
		end
		
	end

end

function makeShiny()

	entity.setItemSlot( "chest", "goodrashinychest" )
	entity.setItemSlot( "legs", "goodrashinylegs" )
	chest = "goodrashinychest"
	legs = "goodrashinylegs"
	midchest = "goodrashinychestmid"
	midlegs = "goodrashinylegsmid"
	fullchest = "goodrashinychestfull"
	fulllegs = "goodrashinylegsfull"

end