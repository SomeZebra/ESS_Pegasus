/*
 * Paper
 * also scraps of paper
 */

/obj/item/weapon/passport
	name = "Sonya Belle's passport"
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "paper"
	throwforce = 0
	w_class = 1.0
	throw_range = 1
	throw_speed = 1
	layer = 4
	pressure_resistance = 1
	var/datPasport

/obj/item/weapon/passport/attack_self(user as mob)
	datPasport = text("<div style='width:390px;height:486px; solid black;padding:1px;background-position:left top;background-image:url(\ref['nano/images/passport_100007.png']);background-repeat:no-repeat;background-size:contain'>")
	var/datum/browser/popup = new(user, "Pasport", name, 293, 381)
	popup.set_content(datPasport)
	popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
	popup.open()

/obj/item/weapon/passport/attack(mob/living/carbon/M as mob, mob/living/carbon/user as mob)
	if(user.zone_sel.selecting == "eyes")
		user.visible_message("<span class='notice'>You show the paper to [M]. </span>", \
			"<span class='notice'> [user] holds up a paper and shows it to [M]. </span>")
		M.examinate(src)

	else if(user.zone_sel.selecting == "mouth") // lipstick wiping
		if(ishuman(M))
			var/mob/living/carbon/human/H = M
			if(H == user)
				user << "<span class='notice'>You wipe off the lipstick with [src].</span>"
				H.lip_style = null
				H.update_body()
			else
				user.visible_message("<span class='warning'>[user] begins to wipe [H]'s lipstick off with \the [src].</span>", \
								 	 "<span class='notice'>You begin to wipe off [H]'s lipstick.</span>")
				if(do_after(user, 10) && do_after(H, 10, 5, 0))	//user needs to keep their active hand, H does not.
					user.visible_message("<span class='notice'>[user] wipes [H]'s lipstick off with \the [src].</span>", \
										 "<span class='notice'>You wipe off [H]'s lipstick.</span>")
					H.lip_style = null
					H.update_body()

