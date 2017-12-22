KrissHouse2F_MapScriptHeader:

.MapTriggers: db 0

.MapCallbacks: db 2
	dbw MAPCALLBACK_NEWMAP, KrissHouse2FInitializeRoom
	dbw MAPCALLBACK_TILES, KrissHouse2FSetSpawn

KrissHouse2F_MapEventHeader:

.Warps: db 1
	warp_def 0, 7, 3, KRISS_HOUSE_1F

.XYTriggers: db 0

.Signposts: db 4
	signpost 1, 2, SIGNPOST_READ, KrissHousePC
	signpost 1, 3, SIGNPOST_READ, KrissHouseRadio
	signpost 1, 5, SIGNPOST_READ, PokemonJournalProfElmScript
	signpost 0, 6, SIGNPOST_IFSET, KrissHousePoster

.PersonEvents: db 4
	person_event SPRITE_CONSOLE, 2, 4, SPRITEMOVEDATA_DOLL, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, GameConsole, EVENT_KRISS_HOUSE_2F_CONSOLE
	person_event SPRITE_DOLL_1, 4, 4, SPRITEMOVEDATA_DOLL, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Doll1, EVENT_KRISS_HOUSE_2F_DOLL_1
	person_event SPRITE_DOLL_2, 4, 5, SPRITEMOVEDATA_DOLL, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Doll2, EVENT_KRISS_HOUSE_2F_DOLL_2
	person_event SPRITE_BIG_DOLL, 1, 0, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, BigDoll, EVENT_KRISS_HOUSE_2F_BIG_DOLL

KrissHouse2FInitializeRoom:
	special ToggleDecorationsVisibility
	setevent EVENT_IN_YOUR_ROOM
	checkevent EVENT_INITIALIZED_EVENTS
	iftrue .SkipInizialization
	jumpstd initializeevents

.SkipInizialization:
	return

KrissHouse2FSetSpawn:
	special ToggleMaptileDecorations
	return

Doll1:
	describedecoration 1

Doll2:
	describedecoration 2

BigDoll:
	describedecoration 3

GameConsole:
	describedecoration 4

KrissHousePoster:
	dw EVENT_KRISS_ROOM_POSTER
	describedecoration 0

KrissHouseRadio:

if DEF(DEBUG)

	opentext
	; time
	special Special_SetDayOfWeek
	special Special_InitialClearDSTFlag
	; full pokegear
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	setflag ENGINE_MAP_CARD
	setflag ENGINE_RADIO_CARD
	setflag ENGINE_EXPN_CARD
	; pokedex
	setflag ENGINE_POKEDEX
	; all hms
	givetmhm HM_CUT
	givetmhm HM_FLY
	givetmhm HM_SURF
	givetmhm HM_STRENGTH
	givetmhm HM_WATERFALL
	givetmhm HM_WHIRLPOOL
	; tms for party
	givetmhm TM_ICE_BEAM
	givetmhm TM_BLIZZARD
	givetmhm TM_FLAMETHROWER
	givetmhm TM_FIRE_BLAST
	givetmhm TM_THUNDERBOLT
	givetmhm TM_THUNDER
	givetmhm TM_PSYCHIC
	givetmhm TM_SHADOW_BALL
	givetmhm TM_EARTHQUAKE
	givetmhm TM_SWORDS_DANCE
	givetmhm TM_CALM_MIND
	givetmhm TM_BULK_UP
	givetmhm TM_ROCK_SMASH
	givetmhm TM_FLASH
	; max money
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 999999
	giveitem COIN_CASE
	givecoins 50000
	; all badges
	setflag ENGINE_ZEPHYRBADGE
	setflag ENGINE_HIVEBADGE
	setflag ENGINE_PLAINBADGE
	setflag ENGINE_FOGBADGE
	setflag ENGINE_STORMBADGE
	setflag ENGINE_MINERALBADGE
	setflag ENGINE_GLACIERBADGE
	setflag ENGINE_RISINGBADGE
	setflag ENGINE_BOULDERBADGE
	setflag ENGINE_CASCADEBADGE
	setflag ENGINE_THUNDERBADGE
	setflag ENGINE_RAINBOWBADGE
	setflag ENGINE_MARSHBADGE
	setflag ENGINE_SOULBADGE
	setflag ENGINE_VOLCANOBADGE
	setflag ENGINE_EARTHBADGE
	setevent EVENT_BEAT_FALKNER
	setevent EVENT_BEAT_BUGSY
	setevent EVENT_BEAT_WHITNEY
	setevent EVENT_BEAT_MORTY
	setevent EVENT_BEAT_CHUCK
	setevent EVENT_BEAT_JASMINE
	setevent EVENT_BEAT_PRYCE
	setevent EVENT_BEAT_CLAIR
	setevent EVENT_BEAT_BROCK
	setevent EVENT_BEAT_MISTY
	setevent EVENT_BEAT_LTSURGE
	setevent EVENT_BEAT_ERIKA
	setevent EVENT_BEAT_JANINE
	setevent EVENT_BEAT_SABRINA
	setevent EVENT_BEAT_BLAINE
	setevent EVENT_BEAT_BLUE
	setevent EVENT_BEAT_ELITE_FOUR
	setevent EVENT_BEAT_ELITE_FOUR_AGAIN
	setevent EVENT_BATTLE_TOWER_OPEN
	clearevent EVENT_BATTLE_TOWER_CLOSED
	; fly anywhere
	setflag ENGINE_FLYPOINT_NEW_BARK
	setflag ENGINE_FLYPOINT_CHERRYGROVE
	setflag ENGINE_FLYPOINT_VIOLET
	setflag ENGINE_FLYPOINT_UNION_CAVE
	setflag ENGINE_FLYPOINT_AZALEA
	setflag ENGINE_FLYPOINT_GOLDENROD
	setflag ENGINE_FLYPOINT_ECRUTEAK
	setflag ENGINE_FLYPOINT_OLIVINE
	setflag ENGINE_FLYPOINT_CIANWOOD
	setflag ENGINE_FLYPOINT_MAHOGANY
	setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	setflag ENGINE_FLYPOINT_BLACKTHORN
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	setflag ENGINE_FLYPOINT_PALLET
	setflag ENGINE_FLYPOINT_VIRIDIAN
	setflag ENGINE_FLYPOINT_PEWTER
	setflag ENGINE_FLYPOINT_MT_MOON
	setflag ENGINE_FLYPOINT_CERULEAN
	setflag ENGINE_FLYPOINT_VERMILION
	setflag ENGINE_FLYPOINT_CELADON
	setflag ENGINE_FLYPOINT_ROCK_TUNNEL
	setflag ENGINE_FLYPOINT_LAVENDER
	setflag ENGINE_FLYPOINT_FUCHSIA
	setflag ENGINE_FLYPOINT_SAFFRON
	setflag ENGINE_FLYPOINT_CINNABAR
	; magnet train works
	setevent EVENT_RESTORED_POWER_TO_KANTO
	giveitem PASS
	; cycling road works
	giveitem BICYCLE
	; useful items
	giveitem ITEMFINDER
	giveitem SQUIRTBOTTLE
	giveitem MYSTICTICKET
	giveitem OLD_SEA_MAP
	giveitem MAX_REPEL, 99
	giveitem MAX_REVIVE, 99
	giveitem FULL_RESTORE, 99
	giveitem MAX_ELIXER, 99
	giveitem RARE_CANDY, 99
	giveitem ESCAPE_ROPE, 99
	giveitem SILVER_LEAF, 99
	giveitem GOLD_LEAF, 99
	giveitem HP_UP, 99
	giveitem PP_UP, 99
	giveitem PROTEIN, 99
	giveitem IRON, 99
	giveitem CARBOS, 99
	giveitem CALCIUM, 99
	giveitem ZINC, 99
	giveitem MASTER_BALL, 99
	giveitem EXP_SHARE, 2
	setflag ENGINE_CREDITS_SKIP
	giveitem SHINY_CHARM
	setflag ENGINE_HAVE_SHINY_CHARM
	; good party
	givepoke MEWTWO, 100, ARMOR_SUIT
	; hm slaves
	givepoke MEW, 100, LEFTOVERS
	givepoke MEW, 100, LEFTOVERS
	; more
	givepoke PIKACHU, 100, LIGHT_BALL
	givepoke PIKACHU, 100, MYSTIC_WATER
	callasm TeachHMSlaveMoves
	callasm MaxMewtwoStats
	callasm SpecialFormPikachus
	; pokedex
	callasm FillPokedex
	; intro events
	addcellnum PHONE_MOM
	domaptrigger KRISS_HOUSE_1F, $1
	setevent EVENT_KRISS_HOUSE_MOM_1
	clearevent EVENT_KRISS_HOUSE_MOM_2
;	; prof.elm events
;	addcellnum PHONE_ELM
;	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
;	setevent EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
;	setevent EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
;	setevent EVENT_GOT_A_POKEMON_FROM_ELM
;	setevent EVENT_RIVAL_CHERRYGROVE_CITY
;	setevent EVENT_LYRA_IN_ELMS_LAB
;	domaptrigger ELMS_LAB, $5
;	domaptrigger NEW_BARK_TOWN, $2
	closetext
	end

TeachHMSlaveMoves:
	ld hl, PartyMon2Moves
	ld a, FLY
	ld [hli], a
	ld a, SURF
	ld [hli], a
	ld a, STRENGTH
	ld [hli], a
	ld a, CUT
	ld [hl], a
	ld hl, PartyMon2PP
	ld a, 15
	ld [hli], a
;	ld a, 15
	ld [hli], a
;	ld a, 15
	ld [hli], a
	ld a, 30
	ld [hl], a
	ld hl, PartyMon3Moves
	ld a, FLASH
	ld [hli], a
	ld a, ROCK_SMASH
	ld [hli], a
	ld a, WHIRLPOOL
	ld [hli], a
	ld a, WATERFALL
	ld [hl], a
	ld hl, PartyMon3PP
	ld a, 20
	ld [hli], a
	ld a, 15
	ld [hli], a
;	ld a, 15
	ld [hli], a
;	ld a, 15
	ld [hl], a
	ret

MaxMewtwoStats:
	ld hl, PartyMon1EVs
	ld a, 252
rept 6
	ld [hli], a
endr
;	ld hl, PartyMon1DVs
	ld a, $ff
rept 3
	ld [hli], a
endr
;	ld hl, PartyMon1Personality
	ld [hl], ABILITY_2 | MODEST
	ld hl, PartyMon1Stats
rept 5
	ld a, 999 / $100
	ld [hli], a
	ld a, 999 % $100
	ld [hli], a
endr
	ret

SpecialFormPikachus:
	ld hl, PartyMon4Form
	ld [hl], FEMALE | PIKACHU_YELLOW_FORM
	ld hl, PartyMon5Form
	ld [hl], MALE
	ld hl, PartyMon5Moves
	ld [hl], SURF
	ret

FillPokedex:
	ld a, 1
	ld [wFirstUnownSeen], a
	ld [wFirstMagikarpSeen], a
	ld hl, PokedexSeen
	call .Fill
	ld hl, PokedexCaught
.Fill:
	ld a, %11111111
	ld bc, 31 ; 001-248
	call ByteFill
	ld a, %00011111
	ld [hl], a ; 249-253
	ret

else

	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .NormalRadio
	checkevent EVENT_LISTENED_TO_INITIAL_RADIO
	iftrue .AbbreviatedRadio
	playmusic MUSIC_POKEMON_TALK
	opentext
	writetext KrisRadioText1
	pause 45
	writetext KrisRadioText2
	pause 45
	writetext KrisRadioText3
	pause 45
	musicfadeout MUSIC_NEW_BARK_TOWN, 16
	writetext KrisRadioText4
	pause 45
	closetext
	setevent EVENT_LISTENED_TO_INITIAL_RADIO
	end

.NormalRadio:
	jumpstd radio1

.AbbreviatedRadio:
	opentext
	writetext KrisRadioText4
	pause 45
	endtext

endc

PokemonJournalProfElmScript:
	setflag ENGINE_READ_PROF_ELM_JOURNAL
	jumptext PokemonJournalProfElmText

KrissHousePC:
	opentext
	special Special_KrissHousePC
	iftrue .Warp
	endtext
.Warp:
	warp NONE, 0, 0
	end

KrisRadioText1:
	text "Prof.Oak's #mon"
	line "Talk! Please tune"
	cont "in next time!"
	done

KrisRadioText2:
	text "#mon Channel!"
	done

KrisRadioText3:
	text "This is DJ Mary,"
	line "your co-host!"
	done

KrisRadioText4:
	text "#mon!"
	line "#mon Channel…"
	done

PokemonJournalProfElmText:
	text "#mon Journal"

	para "Special Feature:"
	line "#mon Prof.Elm!"

	para "Prof.Elm was the"
	line "top student of"
	cont "Prof.Oak."

	para "They're said to"
	line "often argue about"
	cont "research."
	done
