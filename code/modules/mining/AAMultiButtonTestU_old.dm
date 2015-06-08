/**********************Shuttle Computer**************************/

var/lift_tickstomove = 5
var/lift_moving = 0
var/global/OpenF1L1 = 0
var/global/OpenF1L2 = 0
var/global/OpenF1L3 = 0
var/global/OpenF2L4 = 0
var/global/OpenF2L5 = 0
var/global/OpenF2L6 = 0
var/global/OpenF3L4 = 0
var/global/OpenF3L5 = 0
var/global/OpenF3L6 = 0
var/global/OpenF4L4 = 0
var/global/OpenF4L5 = 0
var/global/OpenF4L6 = 0
var/global/OpenF5L4 = 0
var/global/OpenF5L5 = 0
var/global/OpenF5L6 = 0
var/global/OpenF6L4 = 0
var/global/OpenF6L5 = 0
var/global/OpenF6L6 = 0

var/lift_locationF1L1 = locate(/area/lift/F1L1) // A=0 B=1 C=2 D=3 E=4 F=5 G=6 H=7
var/lift_locationF1L2 = locate(/area/lift/F1L2)
var/lift_locationF1L3 = locate(/area/lift/F1L3)
var/lift_locationF2L4 = locate(/area/lift/F2L4)
var/lift_locationF2L5 = locate(/area/lift/F2L5)
var/lift_locationF2L6 = locate(/area/lift/F2L6)
var/lift_locationF3L4 = locate(/area/lift/F3L4)
var/lift_locationF3L5 = locate(/area/lift/F3L5)
var/lift_locationF3L6 = locate(/area/lift/F3L6)
var/lift_locationF4L4 = locate(/area/lift/F4L4)
var/lift_locationF4L5 = locate(/area/lift/F4L5)
var/lift_locationF4L6 = locate(/area/lift/F4L6)
var/lift_locationF5L4 = locate(/area/lift/F5L4)
var/lift_locationF5L5 = locate(/area/lift/F5L5)
var/lift_locationF5L6 = locate(/area/lift/F5L6)
var/lift_locationF6L4 = locate(/area/lift/F6L4)
var/lift_locationF6L5 = locate(/area/lift/F6L5)
var/lift_locationF6L6 = locate(/area/lift/F6L6)

var/area/fromArea
var/area/toArea
var/area/NewFloor  = locate(/area/lift/NewFloor)

// ÌÓÔÍ‡ A - F1L1 to F2L1
proc/lift_toF1L1()
	if(OpenF1L1 == 0)
		usr << "No Hole!"
		return
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF1L1
		toArea = locate(/area/lift/F2L1)

		if (lift_locationF1L1 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		NewFloor.copy_contents_to(fromArea)
		lift_locationF1L1 = toArea

	lift_moving = 0

	return



// ÌÓÔÍ‡ B - F1L2 to F2L2
proc/lift_toF1L2()
	if(OpenF1L2 == 0)
		usr << "No Hole!"
		return
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF1L2
		toArea = locate(/area/lift/F1L2)

		if (lift_locationF1L2 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		NewFloor.copy_contents_to(fromArea)
		lift_locationF1L2 = toArea

	lift_moving = 0

	return



// ÌÓÔÍ‡ C - F1L3 to F2L3
proc/lift_toF1L3()
	if(OpenF1L3 == 0)
		return
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF1L3
		toArea = locate(/area/lift/F1L3)

		if (lift_locationF1L3 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		NewFloor.copy_contents_to(fromArea)
		lift_locationF1L3 = toArea

	lift_moving = 0

	return




// ÌÓÔÍ‡ D - F2L4 to F3L1
proc/lift_toF2L1()
	if(OpenF1L1 == 0)
		return
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF1L1
		toArea = locate(/area/lift/F2L1)

		if (lift_locationF1L1 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF1L1 = toArea

	lift_moving = 0

	return





// ÌÓÔÍ‡ E - F2L5 to F3L2
proc/lift_toF2L2()
	if(OpenF1L2 == 0)
		return
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF1L2
		toArea = locate(/area/lift/F2L2)

		if (lift_locationF1L2 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF1L2 = toArea

	lift_moving = 0

	return




// ÌÓÔÍ‡ F - F2L3 to F3L3
proc/lift_toF2L3()
	if(OpenF1L3 == 0)
		return
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF1L3
		toArea = locate(/area/lift/F2L3)

		if (lift_locationF1L3 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF1L3 = toArea

	lift_moving = 0

	return




// ÌÓÔÍ‡ G - F2L1 to F3L1
proc/lift_toF2L4()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF2L4
		toArea = locate(/area/lift/F2L4)

		if (lift_locationF2L4 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF2L4 = toArea

	lift_moving = 0

	return


// ÌÓÔÍ‡ H
proc/lift_toF2L5()
	if(OpenF2L5 == 0)
		return
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF2L5
		toArea = locate(/area/lift/F2L5)

		if (lift_locationF2L5 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF2L5 = toArea

	lift_moving = 0

	return





// ÌÓÔÍ‡ I
proc/lift_toF2L6()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF2L6
		toArea = locate(/area/lift/F2L6)

		if (lift_locationF2L6 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF2L6 = toArea

	lift_moving = 0

	return




// ÌÓÔÍ‡ J
proc/lift_toF3L1()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF2L4
		toArea = locate(/area/lift/F3L1)

		if (lift_locationF2L4 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF2L4 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ K
proc/lift_toF3L2()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF2L5
		toArea = locate(/area/lift/F3L2)

		if (lift_locationF2L5 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF2L5 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ L
proc/lift_toF3L3()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF2L6
		toArea = locate(/area/lift/F3L3)

		if (lift_locationF2L6 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF2L6 = toArea

	lift_moving = 0

	return



// ÌÓÔÍ‡ M
proc/lift_toF3L4()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF3L4
		toArea = locate(/area/lift/F3L4)

		if (lift_locationF3L4 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF3L4 = toArea

	lift_moving = 0

	return



// ÌÓÔÍ‡ N
proc/lift_toF3L5()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF3L5
		toArea = locate(/area/lift/F3L5)

		if (lift_locationF3L5 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF3L5 = toArea

	lift_moving = 0

	return


// ÌÓÔÍ‡ O
proc/lift_toF3L6()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF3L6
		toArea = locate(/area/lift/F3L6)

		if (lift_locationF3L6 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF3L6 = toArea

	lift_moving = 0

	return



// ÌÓÔÍ‡ P
proc/lift_toF4L1()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF3L4
		toArea = locate(/area/lift/F4L1)

		if (lift_locationF3L4 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF3L4 = toArea

	lift_moving = 0

	return


// ÌÓÔÍ‡ Q
proc/lift_toF4L2()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF3L5
		toArea = locate(/area/lift/F4L2)

		if (lift_locationF3L5 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF3L5 = toArea

	lift_moving = 0

	return


// ÌÓÔÍ‡ R
proc/lift_toF4L3()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF3L6
		toArea = locate(/area/lift/F4L2)

		if (lift_locationF3L6 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF3L6 = toArea

	lift_moving = 0

	return


// ÌÓÔÍ‡ S
proc/lift_toF4L4()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF4L4
		toArea = locate(/area/lift/F4L4)

		if (lift_locationF4L4 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF4L4 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ T
proc/lift_toF4L5()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF4L5
		toArea = locate(/area/lift/F4L5)

		if (lift_locationF4L5 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF4L5 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ U
proc/lift_toF4L6()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF4L6
		toArea = locate(/area/lift/F4L6)

		if (lift_locationF4L6 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF4L6 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ V
proc/lift_toF5L1()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF4L4
		toArea = locate(/area/lift/F5L1)

		if (lift_locationF4L4 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF4L4 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ W
proc/lift_toF5L2()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF4L5
		toArea = locate(/area/lift/F5L2)

		if (lift_locationF4L5 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF4L5 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ X
proc/lift_toF5L3()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF4L6
		toArea = locate(/area/lift/F5L3)

		if (lift_locationF4L6 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF4L6 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ Y
proc/lift_toF5L4()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF5L4
		toArea = locate(/area/lift/F5L4)

		if (lift_locationF5L4 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF5L4 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ Z
proc/lift_toF5L5()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF5L5
		toArea = locate(/area/lift/F5L5)

		if (lift_locationF5L5 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF5L5 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ Z0
proc/lift_toF5L6()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF5L6
		toArea = locate(/area/lift/F5L6)

		if (lift_locationF5L6 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF5L6 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ Z1
proc/lift_toF6L1()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF5L4
		toArea = locate(/area/lift/F6L1)

		if (lift_locationF5L4 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF5L4 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ Z2
proc/lift_toF6L2()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF5L5
		toArea = locate(/area/lift/F6L2)

		if (lift_locationF5L5 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF5L5 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ Z3
proc/lift_toF6L3()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF5L6
		toArea = locate(/area/lift/F6L3)

		if (lift_locationF5L6 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF5L6 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ Z4
proc/lift_toF6L4()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF6L4
		toArea = locate(/area/lift/F6L4)

		if (lift_locationF6L4 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF6L4 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ Z5
proc/lift_toF6L5()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF6L4
		toArea = locate(/area/lift/F6L5)

		if (lift_locationF6L5 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF6L5 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ Z6
proc/lift_toF6L6()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF6L4
		toArea = locate(/area/lift/F6L6)

		if (lift_locationF6L6 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF6L6 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ Z7
proc/lift_toF7L1()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF6L4
		toArea = locate(/area/lift/F7L1)

		if (lift_locationF6L4 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF6L4 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ Z8
proc/lift_toF7L2()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF6L5
		toArea = locate(/area/lift/F7L2)

		if (lift_locationF6L5 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF6L5 = toArea

	lift_moving = 0

	return

// ÌÓÔÍ‡ Z9
proc/lift_toF7L3()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)


		fromArea = lift_locationF6L6
		toArea = locate(/area/lift/F7L3)

		if (lift_locationF6L6 == toArea)
			usr << "Lift already here !"
			return

		for(var/mob/living/carbon/bug in toArea)
			bug.gib()

		fromArea.move_contents_to(toArea)
		lift_locationF6L6 = toArea

	lift_moving = 0

	return

/*

//comp
// ÌÓÔÍ‡ A
/obj/machinery/computer/lift_button/A
	name = "lift button"
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "doorctrl0"
	circuit = "/obj/item/weapon/circuitboard/LiftB"

/obj/machinery/lift_button/A/attack_hand(user as mob)
	lift_toA()

// ÌÓÔÍ‡ B
/obj/machinery/lift_button/B
	name = "lift button"
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "doorctrl0"

/obj/machinery/lift_button/B/attack_hand(user as mob)
	lift_toB()




// ÌÓÔÍ‡ C
/obj/machinery/lift_button/C
	name = "lift button"
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "doorctrl0"

/obj/machinery/lift_button/C/attack_hand(user as mob)
	lift_toC()




// ÌÓÔÍ‡ D
/obj/machinery/lift_button/D
	name = "lift button"
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "doorctrl0"

/obj/machinery/lift_button/D/attack_hand(user as mob)
	lift_toD()





// ÌÓÔÍ‡ E
/obj/machinery/lift_button/E
	name = "lift button"
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "doorctrl0"

/obj/machinery/lift_button/E/attack_hand(user as mob)
	lift_toE()





// ÌÓÔÍ‡ F
/obj/machinery/lift_button/F
	name = "lift button"
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "doorctrl0"

/obj/machinery/lift_button/F/attack_hand(user as mob)
	lift_toF()





// ÌÓÔÍ‡ G
/obj/machinery/lift_button/G
	name = "lift button"
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "doorctrl0"

/obj/machinery/lift_button/G/attack_hand(user as mob)
	lift_toG()




// ÌÓÔÍ‡ H
/obj/machinery/lift_button/H
	name = "lift button"
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "doorctrl0"

/obj/machinery/lift_button/H/attack_hand(user as mob)
	lift_toH()




*/








// ÌÓÔÍ‡ InLift
/obj/machinery/lift_button/InLift/
	name = "lift button"
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "doorctrl0"
	var/TestArea = null

/obj/machinery/lift_button/InLift/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W,/obj/item/weapon/wrench))
		TestArea = get_area(src.loc)



/obj/machinery/lift_button/InLift/attack_hand(user as mob)
	if(..(user))
		return
	src.add_fingerprint(usr)

	var/datF1L1
	var/datF1L2
	var/datF1L3
	var/datF2L4
	var/datF2L5
	var/datF2L6
	var/datF3L4
	var/datF3L5
	var/datF3L6
	var/datF4L4
	var/datF4L5
	var/datF4L6
	var/datF5L4
	var/datF5L5
	var/datF5L6
	var/datF6L4
	var/datF6L5
	var/datF6L6






//	/obj/item/blueprints/proc/get_area_type(var/area/A = get_area())
//	if(istype(A, /area/space))

	if (istype(TestArea, /area/lift/F1L1))
		datF1L1 = text("<center><A href='?src=\ref[src];lift_f1l1=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f2l1=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF1L1)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F1L2))
		datF1L2 = text("<center><A href='?src=\ref[src];lift_f1l2=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f2l2=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF1L2)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F1L3))
		datF1L3 = text("<center><A href='?src=\ref[src];lift_f1l3=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f2l3=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF1L3)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F2L1))
		datF1L1 = text("<center><A href='?src=\ref[src];lift_f1l1=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f2l1=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF1L1)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F2L2))
		datF1L2 = text("<center><A href='?src=\ref[src];lift_f1l2=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f2l2=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF1L2)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F2L3))
		datF1L3 = text("<center><A href='?src=\ref[src];lift_f1l3=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f2l3=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF1L3)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F2L4))
		datF2L4 = text("<center><A href='?src=\ref[src];lift_f2l4=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f3l4=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF2L4)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F2L5))
		datF2L5 = text("<center><A href='?src=\ref[src];lift_f2l5=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f3l5=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF2L5)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F2L6))
		datF2L6 = text("<center><A href='?src=\ref[src];lift_f2l6=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f3l6=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF2L6)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F3L1))
		datF2L4 = text("<center><A href='?src=\ref[src];lift_f2l4=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f3l1=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF2L4)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F3L2))
		datF2L5 = text("<center><A href='?src=\ref[src];lift_f2l5=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f3l2=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF2L5)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F3L3))
		datF2L6 = text("<center><A href='?src=\ref[src];lift_f2l6=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f3l3=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF2L6)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F3L4))
		datF3L4 = text("<center><A href='?src=\ref[src];lift_f3l4=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f4l1=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF3L4)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F3L5))
		datF2L6 = text("<center><A href='?src=\ref[src];lift_f3l5=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f4l2=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF3L5)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()


	if (istype(TestArea, /area/lift/F3L6))
		datF3L6 = text("<center><A href='?src=\ref[src];lift_f3l6=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f4l3=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF3L6)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()


	if (istype(TestArea, /area/lift/F4L1))
		datF3L4 = text("<center><A href='?src=\ref[src];lift_f3l4=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f4l1=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF2L4)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()


	if (istype(TestArea, /area/lift/F4L2))
		datF3L5 = text("<center><A href='?src=\ref[src];lift_f3l5=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f4l2=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF2L5)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()


	if (istype(TestArea, /area/lift/F4L3))
		datF3L6 = text("<center><A href='?src=\ref[src];lift_f3l6=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f4l3=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF2L6)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()


	if (istype(TestArea, /area/lift/F4L4))
		datF4L4 = text("<center><A href='?src=\ref[src];lift_f4l4=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f5l1=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF4L4)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F4L5))
		datF4L5 = text("<center><A href='?src=\ref[src];lift_f4l5=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f5l2=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF4L5)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()


	if (istype(TestArea, /area/lift/F4L6))
		datF4L6 = text("<center><A href='?src=\ref[src];lift_f4l6=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f5l3=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF4L6)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()


	if (istype(TestArea, /area/lift/F5L1))
		datF4L4 = text("<center><A href='?src=\ref[src];lift_f4l4=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f5l1=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF4L4)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()


	if (istype(TestArea, /area/lift/F5L2))
		datF4L5 = text("<center><A href='?src=\ref[src];lift_f4l5=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f5l2=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF4L5)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F5L3))
		datF4L6 = text("<center><A href='?src=\ref[src];lift_f4l6=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f5l3=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF4L6)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()


	if (istype(TestArea, /area/lift/F5L4))
		datF5L4 = text("<center><A href='?src=\ref[src];lift_f5l4=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f6l1=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF5L4)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F5L5))
		datF5L5 = text("<center><A href='?src=\ref[src];lift_f5l5=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f6l2=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF5L5)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F5L6))
		datF5L6 = text("<center><A href='?src=\ref[src];lift_f5l6=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f6l3=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF5L6)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F6L1))
		datF5L4 = text("<center><A href='?src=\ref[src];lift_f5l4=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f6l1=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF5L4)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F6L2))
		datF5L5 = text("<center><A href='?src=\ref[src];lift_f5l5=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f6l2=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF5L5)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F6L3))
		datF5L6 = text("<center><A href='?src=\ref[src];lift_f5l6=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f6l3=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF5L6)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F6L4))
		datF6L4 = text("<center><A href='?src=\ref[src];lift_f6l4=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f7l1=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF6L4)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F6L5))
		datF6L5 = text("<center><A href='?src=\ref[src];lift_f6l5=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f7l2=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF6L5)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F6L6))
		datF6L6 = text("<center><A href='?src=\ref[src];lift_f6l6=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f7l3=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF6L6)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F7L1))
		datF6L4 = text("<center><A href='?src=\ref[src];lift_f6l4=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f7l3=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF6L4)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F7L2))
		datF6L5 = text("<center><A href='?src=\ref[src];lift_f6l5=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f7l3=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF6L5)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()

	if (istype(TestArea, /area/lift/F7L3))
		datF6L6 = text("<center><A href='?src=\ref[src];lift_f6l6=[1]'>A</A></center></br> <center><A href='?src=\ref[src];lift_f7l3=[1]'>B</A></center></br>")
		var/datum/browser/popup = new(user, "lift", name, 200, 370)
		popup.set_content(datF6L6)
		popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
		popup.open()



/obj/machinery/lift_button/InLift/Topic(href, href_list)
	if(..())
		return
	usr.set_machine(src)
	src.add_fingerprint(usr)



	if(href_list["lift_f1l1"])
		lift_toF1L1()


	if(href_list["lift_f1l2"])
		lift_toF1L2()


	if(href_list["lift_f1l3"])
		lift_toF1L3()


	if(href_list["lift_f2l1"])
		lift_toF2L1()


	if(href_list["lift_f2l2"])
		lift_toF2L2()


	if(href_list["lift_f2l3"])
		lift_toF2L3()


	if(href_list["lift_f2l4"])
		lift_toF2L4()


	if(href_list["lift_f2l5"])
		lift_toF2L5()


	if(href_list["lift_f2l6"])
		lift_toF2L6()


	if(href_list["lift_f3l1"])
		lift_toF3L1()


	if(href_list["lift_f3l2"])
		lift_toF3L2()


	if(href_list["lift_f3l3"])
		lift_toF3L3()


	if(href_list["lift_f3l4"])
		lift_toF3L4()


	if(href_list["lift_f3l5"])
		lift_toF3L5()


	if(href_list["lift_f3l6"])
		lift_toF3L6()


	if(href_list["lift_f4l1"])
		lift_toF4L1()


	if(href_list["lift_f4l2"])
		lift_toF4L2()


	if(href_list["lift_f4l3"])
		lift_toF4L3()


	if(href_list["lift_f4l4"])
		lift_toF4L4()


	if(href_list["lift_f4l5"])
		lift_toF4L5()


	if(href_list["lift_f4l6"])
		lift_toF4L6()


	if(href_list["lift_f5l1"])
		lift_toF5L1()


	if(href_list["lift_f5l2"])
		lift_toF5L2()


	if(href_list["lift_f5l3"])
		lift_toF5L3()


	if(href_list["lift_f5l4"])
		lift_toF5L4()


	if(href_list["lift_f5l5"])
		lift_toF5L5()


	if(href_list["lift_f5l5"])
		lift_toF5L6()


	if(href_list["lift_f6l1"])
		lift_toF6L1()


	if(href_list["lift_f6l2"])
		lift_toF6L2()


	if(href_list["lift_f6l3"])
		lift_toF6L3()









