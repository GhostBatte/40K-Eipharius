//My first go around at a spoken word ritual system somewhat similar to YE OLDE LIFEWEB - wel
//Refer to say code and ritual filter to see how we are arriving here
//This is just for storing future rituals and their requirements, actual handling will be elsewhere in this very folder!


/datum/ritual
	var/name = "Default Ritual"
	var/description = "Default Ritual"
	var/announced = FALSE //upon completion is this announced somehow?
	var/ritualists = 0 //How many people OTHER than the ritual leader are required to complete this?
	var/location_specific = FALSE //Does this ritual need to be performed in a specific area
	var/area/ritual_area = /area/cadiaoutpost/oa/shuttle/transit //If above is true, ensure you put a new area
	var/response_required = FALSE // do we actually need a response?
	var/response_phrase = "Default Response" //What are people supposed to chant for this ritual? Set above to true
	var/min_chants = 0 //How many times must the phrase be uttered before our ritual is complete? Set response req to true
	var/timeout = 30000 //How long should a ritual take to time out/fail? (Default 30 seconds)

//Begin actual rituals

//idk this is kind of a meme ritual, tweak it as needed
/datum/ritual/preserve_us
	name = "Preservation Ritual"
	description = "Sanctifys the Cathedral, thwarting access to any non-believers."
	ritualists = 1
	location_specific = TRUE
	ritual_area = /area/cadiaoutpost/oa/service/chapel //Must be performed in the chapel
	response_required = TRUE
	response_phrase = "Emperor keep us"
	min_chants = 3 //requires at least 1 additional ritualist and the phrase must be uttered 3 times by non-ritual leader