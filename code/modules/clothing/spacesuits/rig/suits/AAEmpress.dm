/obj/item/weapon/rig/empress
	name = "Empress class hardsuit"
	suit_type = "combat hardsuit"
	desc = "The most powerfull suid blesset by The empress."
	icon_state = "hazard_rig"
	armor = list(melee = 95, bullet = 95, laser = 95,energy = 95, bomb = 95, bio = 100, rad = 100, agony = 100, fire = 95, tox = 100, stun = 100)
	//slowdown = -3
	offline_slowdown = 0
	offline_vision_restriction = 0
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS

	allowed = list(/obj/item/)

	req_access = null
	req_one_access = list(access_captain)


	initial_modules = list(
		/obj/item/rig_module/device/plasmacutter,
		/obj/item/rig_module/device/drill,
		/obj/item/rig_module/device/orescanner,
		/obj/item/rig_module/device/rcd,
		/obj/item/rig_module/vision/meson,
		/obj/item/rig_module/mounted,
		/obj/item/rig_module/grenade_launcher,
		/obj/item/rig_module/mounted/egun,
		/obj/item/rig_module/mounted/taser,
		/obj/item/rig_module/mounted/energy_blade,
		/obj/item/rig_module/fabricator,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/datajack,
		/obj/item/rig_module/power_sink,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/stealth_field,
		/obj/item/rig_module/teleporter,
		/obj/item/rig_module/fabricator/energy_net,
		/obj/item/rig_module/self_destruct/true,
		/obj/item/rig_module/device,
		/obj/item/rig_module/device/healthscanner,
		/obj/item/rig_module/device/anomaly_scanner,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/foam_sprayer,
		//obj/item/rig_module/device/broadcaster,
		/obj/item/rig_module/chem_dispenser,
		/obj/item/rig_module/chem_dispenser/injector,
		/obj/item/rig_module/voice,
		/obj/item/rig_module/vision,
		/obj/item/rig_module/vision/thermal
		)

	cell_type = /obj/item/weapon/cell/infinite
	helm_type = /obj/item/clothing/head/helmet/space/rig/empress
	glove_type = /obj/item/clothing/gloves/yellow/empress
	chest_type = /obj/item/clothing/suit/space/rig/empress
	boot_type = /obj/item/clothing/shoes/empress

////////////////////////////////////////
/////////////перчатки///////////////////
////////////////////////////////////////

/obj/item/clothing/gloves/yellow/empress
	desc = "These gloves will protect the wearer from electric shock and cold."
	name = "empress class gloves"
	icon_state = "captain"
	item_state = "egloves"
	item_color = "captain"
	body_parts_covered = HANDS
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_HEAT_PROTECTION_TEMPERATURE
	cold_protection = HANDS
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	var/list/clothing_choices = list()



/obj/item/clothing/gloves/yellow/empress/New()
	..()
	var/blocked = list(/obj/item/clothing/gloves/yellow/empress)
	for(var/U in typesof(/obj/item/clothing/gloves)-blocked)
		var/obj/item/clothing/under/V = new U
		src.clothing_choices[V.name] = U



/obj/item/clothing/gloves/yellow/empress/verb/change()
	set name = "Change Gloves Appearance"
	set category = "Object"
	set src in usr

	var/picked = input("Select gloves to change it to", "Empress gloves")as null|anything in clothing_choices
	if(!picked || !clothing_choices[picked])
		return
	var/newtype = clothing_choices[picked]
	var/obj/item/clothing/A = new newtype

	desc = null
	siemens_coefficient = 0
	permeability_coefficient = 0.05

	desc = A.desc
	name = A.name
	icon_state = A.icon_state
	item_state = A.item_state
	item_color = A.item_color
	body_parts_covered = A.body_parts_covered
	update_clothing_icon()




////////////////////////////////////////////////
////////////Ботинки/////////////////////////////
////////////////////////////////////////////////


/obj/item/clothing/shoes/empress
	desc = "Magnetic boots, often used during extravehicular activity to ensure the user remains safely attached to the vehicle."
	name = "magboots"
	icon_state = "magboots0"
	species_restricted = null
	body_parts_covered = FEET
	heat_protection = FEET
	max_heat_protection_temperature = SHOE_MAX_HEAT_PROTECTION_TEMPERATURE
	cold_protection = FEET
	var/magpulse = 0
//	flags = NOSLIP //disabled by default
	var/list/clothing_choices = list()

	verb/toggle()
		set name = "Toggle Magboots"
		set category = "Object"
		set src in usr
		if(usr.stat)
			return
		if(src.magpulse)
			src.flags &= ~NOSLIP
			src.slowdown = -1
			src.magpulse = 0
			//icon_state = "magboots0"
			usr << "You disable the mag-pulse traction system."
		else
			src.flags |= NOSLIP
			src.slowdown = 0
			src.magpulse = 1
			//icon_state = "magboots1"
			usr << "You enable the mag-pulse traction system."
		//usr.update_inv_shoes()	//so our mob-overlays update


	examine()
		set src in view()
		..()
		var/state = "disabled"
		if(src.flags&NOSLIP)
			state = "enabled"
		usr << "Its mag-pulse traction system appears to be [state]."




/obj/item/clothing/shoes/empress/New()
	..()
	var/blocked = list(/obj/item/clothing/shoes/empress)
	for(var/U in typesof(/obj/item/clothing/shoes/)-blocked)
		if(src.magpulse == 1)
			return
		var/obj/item/clothing/under/V = new U
		src.clothing_choices[V.name] = U



/obj/item/clothing/shoes/empress/verb/change()
	set name = "Change Shoes Appearance"
	set category = "Object"
	set src in usr

	var/picked = input("Select shoes to change it to", "Empress shoes")as null|anything in clothing_choices
	if(!picked || !clothing_choices[picked])
		return
	var/newtype = clothing_choices[picked]
	var/obj/item/clothing/A = new newtype

	desc = null
	permeability_coefficient = 0.90

	desc = A.desc
	name = A.name
	icon_state = A.icon_state
	item_state = A.item_state
	item_color = A.item_color
	body_parts_covered = A.body_parts_covered
	update_clothing_icon()



/////////////////////////////////////////////////////////
///////////////Броня/////////////////////////////////////
/////////////////////////////////////////////////////////

/obj/item/clothing/suit/space/rig/empress
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	max_heat_protection_temperature = 30000
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	//var/on = 0
	//var/on2 = 0
	//var/busy = 0
	var/list/clothing_choices = list()


/obj/item/clothing/suit/space/rig/empress/New()
	..()
	var/blocked = list(/obj/item/clothing/suit/space/rig/empress)
	for(var/U in typesof(/obj/item/clothing/suit/)-blocked)
		var/obj/item/clothing/under/V = new U
		src.clothing_choices[V.name] = U



/obj/item/clothing/suit/space/rig/empress/verb/change()
	set name = "Change Suit Appearance"
	set category = "Object"
	set src in usr

	var/picked = input("Select suit to change it to", "Empress suit")as null|anything in clothing_choices
	if(!picked || !clothing_choices[picked])
		return
	var/newtype = clothing_choices[picked]
	var/obj/item/clothing/A = new newtype

	desc = null
	permeability_coefficient = 0.90
	//slowdown = -3
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	max_heat_protection_temperature = 30000
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS

	desc = A.desc
	name = A.name
	icon_state = A.icon_state
	item_state = A.item_state
	item_color = A.item_color
	body_parts_covered = A.body_parts_covered
	update_clothing_icon()

///////////////////////////////////////////////////////////////
/////////////////////шлем//////////////////////////////////////
///////////////////////////////////////////////////////////////

/obj/item/clothing/head/helmet/space/rig/empress
	name = "empress class hardsuit helmet"
	desc = "A special helmet designed for Empress, low-pressure environment. Has thermal shielding."
	icon_state = "capspace"
	item_state = "capspacehelmet"
	armor = list(melee = 90, bullet = 90, laser = 95,energy = 95, bomb = 95, bio = 100, rad = 100, agony = 100, fire = 95, tox = 100, stun = 100, eye_blur = 100)
	body_parts_covered = HEAD
	heat_protection = HEAD
	max_heat_protection_temperature = 30000
	cold_protection = HEAD												//Uncomment to enable firesuit protection
	species_restricted = list("exclude","Unathi","Tajaran","Skrell","Diona","Vox")
	var/list/clothing_choices = list()

	attack_self(mob/user)
		user.mutations.Add(TK)
		user.mutations.Add(XRAY)
		user.mutations.Add(COLD_RESISTANCE)
		user.mutations.Add(HEAL)
		user.mutations.Add(mNobreath)
		user.mutations.Add(mRemote)
		user.mutations.Add(mRegen)
		user.mutations.Add(mRun)
		user.mutations.Add(mRemotetalk)
		user.mutations.Add(mMorph)
		user.mutations.Add(mFingerprints)
		user.mutations.Add(mShock)



		//user.mutations.Add(FIRE)
		return
		//user.mutations.Add(mNobreath)
		//user.mutations.Add(mRegen)
		//user.mutations.Add(mRemotetalk)
		//user.mutations.Add(mMorph)
		//user.mutations.Add(mFingerprints)




/obj/item/clothing/head/helmet/space/rig/empress/New()
	..()
	var/blocked = list(/obj/item/clothing/head/helmet/space/rig/empress)
	for(var/U in typesof(/obj/item/clothing/head)-blocked)
		var/obj/item/clothing/under/V = new U
		src.clothing_choices[V.name] = U



/obj/item/clothing/head/helmet/space/rig/empress/verb/change()
	set name = "Change Helm Appearance"
	set category = "Object"
	set src in usr

	var/picked = input("Select helm to change it to", "Empress helm")as null|anything in clothing_choices
	if(!picked || !clothing_choices[picked])
		return
	var/newtype = clothing_choices[picked]
	var/obj/item/clothing/A = new newtype

	desc = null
	permeability_coefficient = 0.90
	heat_protection = HEAD
	max_heat_protection_temperature = 30000
	cold_protection = HEAD

	desc = A.desc
	name = A.name
	icon_state = A.icon_state
	item_state = A.item_state
	item_color = A.item_color
	body_parts_covered = A.body_parts_covered
	update_clothing_icon()

///////////////////////////////////////////////////////
///////////under///////////////////////////////////////
///////////////////////////////////////////////////////

/obj/item/weapon/storage/backpack/empress
	name = "empress class satchel"
	desc = "An exclusive satchel for Empress."
	icon_state = "satchel-cap"
	item_state = "captainpack"
	w_class = 4.0
	storage_slots = 40
	max_w_class = 5
	max_combined_w_class = 400

