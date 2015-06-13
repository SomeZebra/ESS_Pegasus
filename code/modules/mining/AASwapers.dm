
var/lift_tickstomove = 5
var/lift_moving = 0
//var/area/shape1AreaH = locate(/area/swaper/tmp1)
//var/area/shape2AreaH = locate(/area/swaper/tmp2)
//var/area/shape3AreaH = locate(/area/swaper/tmp3)
//var/area/shape4AreaH = locate(/area/swaper/tmp4)
var/area/holdingArea
//**********************************************ÃŒÕŒÀ»“ —¬¿œ≈–¿***********************************************

/obj/machinery/monolith/swaper
	name = "Monolith"
	icon = 'icons/obj/machines/swaper.dmi'
	icon_state = "swaper"
	var/area/fromArea
	var/area/toArea
	var/area/bufArea
	var/area/pathHoldArea
/obj/machinery/monolith/swaper/attack_hand(user as mob)
	bufArea = get_area(src.loc)
	swap()
	if(..(user))
		return
	src.add_fingerprint(usr)



//**********************************************‘”Õ ÷»ﬂ —¬¿œ≈–¿***********************************************
/obj/machinery/monolith/swaper/proc/swap()
	if(lift_moving)	return
	lift_moving = 1
	spawn(lift_tickstomove*5)

		pathHoldArea = "[bufArea.parent_type]"

		toArea = pick(locate(pathHoldArea + "/area1"), locate(pathHoldArea + "/area2"), locate(pathHoldArea + "/area3"))
		holdingArea = locate(pathHoldArea + "/area4")

		fromArea = locate(bufArea.tag)
		if (fromArea == toArea)
			usr << "Whole world blink for a second but nothing happened !"
			lift_moving = 0
			return

		fromArea.move_contents_to(holdingArea)
		toArea.move_contents_to(fromArea)
		holdingArea.move_contents_to(toArea)
		playsound(usr.loc, 'sound/effects/phasein.ogg', 50, 1)
		usr << "When you touch surface of monolith you start to feel strange desorientation"

	lift_moving = 0

	return