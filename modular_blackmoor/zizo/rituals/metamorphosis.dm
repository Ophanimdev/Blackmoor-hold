/datum/ritual/metamorphosis
	name = "Metamorphosis"
	tutorial = "Two eggs will be laid at the poles of the sigil. Candles will be festooned at the corners and our Flesh will extend to the East and West."
	incantation = "ZIZO!! Warp flesh into perfection!"
	ingredient_map = list(
		"NW" = /obj/item/candle,
		"N" = /obj/item/reagent_containers/food/snacks/egg,
		"NE" = /obj/item/candle,
		"W" = /obj/item/reagent_containers/food/snacks/rogue/meat,
		"C" = /mob/living/carbon/human,
		"E" = /obj/item/reagent_containers/food/snacks/rogue/meat,
		"SW" = /obj/item/candle,
		"S" = /obj/item/reagent_containers/food/snacks/egg,
		"SE" = /obj/item/candle
	)
	consumption = TRUE

/datum/ritual/metamorphosis/ritual_effects(var/list/ingredients)
	. = ..()
	var/mob/living/carbon/human/victim = ingredients["C"]

	victim.set_species(/datum/species/abomination)
	//You're beefy, but not the smartest.
	victim.STASTR = 20
	victim.STACON = 20
	victim.STAINT = 3
	victim.STAPER = 5
	victim.regenerate_icons()
	victim.name = "?!WHATISIT!?"
	victim.spawn_gibs()
	victim.spawn_gibs()
	victim.spawn_gibs()
	return

