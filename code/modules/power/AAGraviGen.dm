/obj/machinery/computer/gravity_generator2
	name = "gravitational generator"
	desc = "A device which produces a gravaton field when set up."
	icon_state = "comm"
	anchored = 1
	density = 1
	use_power = 1
	unacidable = 1
	idle_power_usage = 300
	active_power_usage = 300
	var/broken = 0
	req_one_access = list(access_captain)
	req_access = list(access_captain)
	circuit = "/obj/item/weapon/circuitboard/grav"

/obj/machinery/computer/gravity_generator2/process()
	if (broken == 0)
		if (stat & (NOPOWER|BROKEN))
			broken = 1
			gravity_is_on = 0
			command_announcement.Announce("Gravity generators were powered down or destroyed.")
			for(var/area/A in world)
				A.gravitychange(gravity_is_on,A)

/obj/machinery/computer/gravity_generator2/attack_hand(user as mob)
	if (broken == 0)
		if (gravity_is_on == 0)
			usr << "Gravity has been reinitialized"
			command_announcement.Announce("Gravity generators are again functioning within normal parameters. Sorry for any inconvenience.")
			gravity_is_on = 1
			for(var/area/A in world)
				A.gravitychange(gravity_is_on,A)
		else
			usr << "Gravity has been terminated"
			command_announcement.Announce("Gravity generators are turned off.")
			gravity_is_on = 0
			for(var/area/A in world)
				A.gravitychange(gravity_is_on,A)
			return





/obj/item/weapon/circuitboard/grav
	name = T_BOARD("supply control console")
	build_path = /obj/machinery/computer/gravity_generator2
	origin_tech = "programming=3"
	var/contraband_enabled = 0
/*
/obj/item/weapon/circuitboard/grav/construct(var/obj/machinery/computer/grav/SC)
	if (..(SC))
		SC.can_order_contraband = contraband_enabled

/obj/item/weapon/circuitboard/grav/deconstruct(var/obj/machinery/computer/grav/SC)
	if (..(SC))
		contraband_enabled = SC.can_order_contraband

/obj/item/weapon/circuitboard/grav/attackby(obj/item/I as obj, mob/user as mob)
	if(istype(I,/obj/item/device/multitool))
		var/catastasis = src.contraband_enabled
		var/opposite_catastasis
		if(catastasis)
			opposite_catastasis = "STANDARD"
			catastasis = "BROAD"
		else
			opposite_catastasis = "BROAD"
			catastasis = "STANDARD"

		switch( alert("Current receiver spectrum is set to: [catastasis]","Multitool-Circuitboard interface","Switch to [opposite_catastasis]","Cancel") )
		//switch( alert("Current receiver spectrum is set to: " {(src.contraband_enabled) ? ("BROAD") : ("STANDARD")} , "Multitool-Circuitboard interface" , "Switch to " {(src.contraband_enabled) ? ("STANDARD") : ("BROAD")}, "Cancel") )
			if("Switch to STANDARD","Switch to BROAD")
				src.contraband_enabled = !src.contraband_enabled

			if("Cancel")
				return
			else
				user << "DERP! BUG! Report this (And what you were doing to cause it) to Agouri"
	return
*/

datum/design/circuit/grav
	name = "supply control console"
	id = "supplycomp"
	req_tech = list("programming" = 3)
	build_path = /obj/item/weapon/circuitboard/grav






/*
/obj/machinery/gravity_generator/proc/stopedA()
	gravity_is_on = !gravity_is_on
	for(var/area/A in world)
		A.gravitychange(gravity_is_on,A)

*/



