return function(sTool, sLimit) local tSet = {} -- English ( Column "ISO 639-1" )
  ------ CONFIGURE TRANSLATIONS ------ https://en.wikipedia.org/wiki/ISO_639-1
  -- con >> control # def >> default # hd >> header # lb >> label
  tSet["tool."..sTool..".workmode.1"       ] = "General spawn/snap pieces"
  tSet["tool."..sTool..".workmode.2"       ] = "Active point intersection"
  tSet["tool."..sTool..".workmode.3"       ] = "Curve line segment fitting"
  tSet["tool."..sTool..".workmode.4"       ] = "Surface normal flip over"
  tSet["tool."..sTool..".info.1"           ] = "Spawns pieces on the map or snaps them relative to each other"
  tSet["tool."..sTool..".info.2"           ] = "Connects track sections with dedicated segment designed for that"
  tSet["tool."..sTool..".info.3"           ] = "Creates continuous track layouts passing through given checkpoints"
  tSet["tool."..sTool..".info.4"           ] = "Flips the selected entities list across given origin and normal"
  tSet["tool."..sTool..".left.1"           ] = "Spawn/snap a track piece. Hold SHIFT to stack"
  tSet["tool."..sTool..".left.2"           ] = "Spawn track piece at the intersection point"
  tSet["tool."..sTool..".left.3"           ] = "Spawn segmented track interpolation curve"
  tSet["tool."..sTool..".left.4"           ] = "Spawn flipped over list of tracks selected"
  tSet["tool."..sTool..".right.1"          ] = "Copy track piece model or open frequent pieces frame"
  tSet["tool."..sTool..".right.2"          ] = tSet["tool."..sTool..".right.1"]
  tSet["tool."..sTool..".right.3"          ] = "Create node for the segmented curve. Hold SHIFT to update"
  tSet["tool."..sTool..".right.4"          ] = "Register entity in the flip over list. Hold SHIFT to change model"
  tSet["tool."..sTool..".right_use.1"      ] = "Disabled SCROLL. "..tSet["tool."..sTool..".right.1"]
  tSet["tool."..sTool..".right_use.2"      ] = tSet["tool."..sTool..".right_use.1"]
  tSet["tool."..sTool..".right_use.3"      ] = "Generate node form the nearest track piece active point"
  tSet["tool."..sTool..".right_use.4"      ] = tSet["tool."..sTool..".right_use.1"]
  tSet["tool."..sTool..".reload.1"         ] = "Remove a track piece. Hold SHIFT to select an anchor"
  tSet["tool."..sTool..".reload.2"         ] = "Remove a track piece. Hold SHIFT to select relation ray"
  tSet["tool."..sTool..".reload.3"         ] = "Removes a curve interpolation node. Hold SHIFT to clear the stack"
  tSet["tool."..sTool..".reload.4"         ] = "Clear the flip entities selection list. When empty removes piece"
  tSet["tool."..sTool..".reload_use.1"     ] = "Enable database export to open DSV manager"
  tSet["tool."..sTool..".reload_use.2"     ] = tSet["tool."..sTool..".reload_use.1"]
  tSet["tool."..sTool..".reload_use.3"     ] = tSet["tool."..sTool..".reload_use.1"]
  tSet["tool."..sTool..".reload_use.4"     ] = tSet["tool."..sTool..".reload_use.1"]
  tSet["tool."..sTool..".desc"             ] = "Assembles a track for the vehicles to run on"
  tSet["tool."..sTool..".name"             ] = "Track assembly"
  tSet["tool."..sTool..".phytype"          ] = "Select physical properties type of the ones listed here"
  tSet["tool."..sTool..".phytype_con"      ] = "Material type:"
  tSet["tool."..sTool..".phytype_def"      ] = "<Select Surface Material TYPE>"
  tSet["tool."..sTool..".phyname"          ] = "Select physical properties name to use when creating the track as this will affect the surface friction"
  tSet["tool."..sTool..".phyname_con"      ] = "Material name:"
  tSet["tool."..sTool..".phyname_def"      ] = "<Select Surface Material NAME>"
  tSet["tool."..sTool..".bgskids"          ] = "Selection code of comma delimited Bodygroup/Skin ID"
  tSet["tool."..sTool..".bgskids_con"      ] = "Bodygroup/Skin:"
  tSet["tool."..sTool..".bgskids_def"      ] = "Write selection code here. For example 1,0,0,2,1/3"
  tSet["tool."..sTool..".mass"             ] = "How heavy the piece spawned will be"
  tSet["tool."..sTool..".mass_con"         ] = "Piece mass:"
  tSet["tool."..sTool..".model"            ] = "Select a piece to start/continue your track with by expanding a type and clicking on a node"
  tSet["tool."..sTool..".model_con"        ] = "Piece model:"
  tSet["tool."..sTool..".activrad"         ] = "Minimum distance needed to select an active point"
  tSet["tool."..sTool..".activrad_con"     ] = "Active radius:"
  tSet["tool."..sTool..".stackcnt"         ] = "Maximum number of pieces to create while stacking"
  tSet["tool."..sTool..".stackcnt_con"     ] = "Pieces count:"
  tSet["tool."..sTool..".angsnap"          ] = "Snap the first piece spawned at this much degrees"
  tSet["tool."..sTool..".angsnap_con"      ] = "Angular alignment:"
  tSet["tool."..sTool..".resetvars"        ] = "Click to reset the additional values"
  tSet["tool."..sTool..".resetvars_con"    ] = "V Reset variables V"
  tSet["tool."..sTool..".nextpic"          ] = "Additional origin angular pitch offset"
  tSet["tool."..sTool..".nextpic_con"      ] = "Origin pitch:"
  tSet["tool."..sTool..".nextyaw"          ] = "Additional origin angular yaw offset"
  tSet["tool."..sTool..".nextyaw_con"      ] = "Origin yaw:"
  tSet["tool."..sTool..".nextrol"          ] = "Additional origin angular roll offset"
  tSet["tool."..sTool..".nextrol_con"      ] = "Origin roll:"
  tSet["tool."..sTool..".nextx"            ] = "Additional origin linear X offset"
  tSet["tool."..sTool..".nextx_con"        ] = "Offset X:"
  tSet["tool."..sTool..".nexty"            ] = "Additional origin linear Y offset"
  tSet["tool."..sTool..".nexty_con"        ] = "Offset Y:"
  tSet["tool."..sTool..".nextz"            ] = "Additional origin linear Z offset"
  tSet["tool."..sTool..".nextz_con"        ] = "Offset Z:"
  tSet["tool."..sTool..".gravity"          ] = "Controls the gravity on the piece spawned"
  tSet["tool."..sTool..".gravity_con"      ] = "Apply piece gravity"
  tSet["tool."..sTool..".weld"             ] = "Creates welds between pieces or pieces/anchor"
  tSet["tool."..sTool..".weld_con"         ] = "Weld"
  tSet["tool."..sTool..".forcelim"         ] = "Controls how much force is needed to break the weld"
  tSet["tool."..sTool..".forcelim_con"     ] = "Force limit:"
  tSet["tool."..sTool..".ignphysgn"        ] = "Ignores physics gun grab on the piece spawned/snapped/stacked"
  tSet["tool."..sTool..".ignphysgn_con"    ] = "Ignore physics gun"
  tSet["tool."..sTool..".nocollide"        ] = "Creates a no-collide between pieces or pieces/anchor"
  tSet["tool."..sTool..".nocollide_con"    ] = "NoCollide"
  tSet["tool."..sTool..".nocollidew"       ] = "Creates a no-collide between pieces and world"
  tSet["tool."..sTool..".nocollidew_con"   ] = "NoCollide world"
  tSet["tool."..sTool..".freeze"           ] = "Makes the piece spawn in a frozen state"
  tSet["tool."..sTool..".freeze_con"       ] = "Freeze piece"
  tSet["tool."..sTool..".igntype"          ] = "Makes the tool ignore the different piece types on snapping/stacking"
  tSet["tool."..sTool..".igntype_con"      ] = "Ignore track type"
  tSet["tool."..sTool..".spnflat"          ] = "The next piece will be spawned/snapped/stacked horizontally"
  tSet["tool."..sTool..".spnflat_con"      ] = "Spawn horizontally"
  tSet["tool."..sTool..".spawncn"          ] = "Spawns the piece at the center, else spawns relative to the active point chosen"
  tSet["tool."..sTool..".spawncn_con"      ] = "Origin from center"
  tSet["tool."..sTool..".surfsnap"         ] = "Snaps the piece to the surface the player is pointing at"
  tSet["tool."..sTool..".surfsnap_con"     ] = "Snap to trace surface"
  tSet["tool."..sTool..".appangfst"        ] = "Apply the angular offsets only on the first piece"
  tSet["tool."..sTool..".appangfst_con"    ] = "Apply angular on first"
  tSet["tool."..sTool..".applinfst"        ] = "Apply the linear offsets only on the first piece"
  tSet["tool."..sTool..".applinfst_con"    ] = "Apply linear on first"
  tSet["tool."..sTool..".adviser"          ] = "Controls rendering the tool position/angle adviser"
  tSet["tool."..sTool..".adviser_con"      ] = "Draw adviser"
  tSet["tool."..sTool..".pntasist"         ] = "Controls rendering the tool snap point assistant"
  tSet["tool."..sTool..".pntasist_con"     ] = "Draw assistant"
  tSet["tool."..sTool..".ghostcnt"         ] = "Controls rendering the tool ghosted holder pieces count"
  tSet["tool."..sTool..".ghostcnt_con"     ] = "Ghosts count:"
  tSet["tool."..sTool..".engunsnap"        ] = "Controls snapping when the piece is dropped by the player physgun"
  tSet["tool."..sTool..".engunsnap_con"    ] = "Enable physgun snap"
  tSet["tool."..sTool..".type"             ] = "Select the track type to use by expanding the folder"
  tSet["tool."..sTool..".type_con"         ] = "Track type:"
  tSet["tool."..sTool..".category"         ] = "Select the track category to use by expanding the folder"
  tSet["tool."..sTool..".category_con"     ] = "Track category:"
  tSet["tool."..sTool..".workmode"         ] = "Change this option to select a different working mode"
  tSet["tool."..sTool..".workmode_con"     ] = "Work mode:"
  tSet["tool."..sTool..".pn_export"        ] = "Click to export the client database as a file"
  tSet["tool."..sTool..".pn_export_lb"     ] = "Export DB"
  tSet["tool."..sTool..".pn_routine"       ] = "The list of your frequently used track pieces"
  tSet["tool."..sTool..".pn_routine_hd"    ] = "Frequent pieces by:"
  tSet["tool."..sTool..".pn_externdb"      ] = "The external databases available for:"
  tSet["tool."..sTool..".pn_externdb_hd"   ] = "External databases by:"
  tSet["tool."..sTool..".pn_externdb_lb"   ] = "Right click for options:"
  tSet["tool."..sTool..".pn_externdb_1"    ] = "Copy unique prefix"
  tSet["tool."..sTool..".pn_externdb_2"    ] = "Copy DSV folder path"
  tSet["tool."..sTool..".pn_externdb_3"    ] = "Copy table nick"
  tSet["tool."..sTool..".pn_externdb_4"    ] = "Copy table path"
  tSet["tool."..sTool..".pn_externdb_5"    ] = "Copy table time"
  tSet["tool."..sTool..".pn_externdb_6"    ] = "Copy table size"
  tSet["tool."..sTool..".pn_externdb_7"    ] = "Edit table content (Luapad)"
  tSet["tool."..sTool..".pn_externdb_8"    ] = "Delete database entry"
  tSet["tool."..sTool..".pn_ext_dsv_lb"    ] = "External DSV list"
  tSet["tool."..sTool..".pn_ext_dsv_hd"    ] = "External DSV databases list is displayed here"
  tSet["tool."..sTool..".pn_ext_dsv_1"     ] = "Database unique prefix"
  tSet["tool."..sTool..".pn_ext_dsv_2"     ] = "Active"
  tSet["tool."..sTool..".pn_display"       ] = "The model of your track piece is displayed here"
  tSet["tool."..sTool..".pn_pattern"       ] = "Write a pattern here and hit ENTER to preform a search"
  tSet["tool."..sTool..".pn_srchcol"       ] = "Choose which list column you want to preform a search on"
  tSet["tool."..sTool..".pn_srchcol_lb"    ] = "<Search by>"
  tSet["tool."..sTool..".pn_srchcol_lb1"   ] = "Model"
  tSet["tool."..sTool..".pn_srchcol_lb2"   ] = "Type"
  tSet["tool."..sTool..".pn_srchcol_lb3"   ] = "Name"
  tSet["tool."..sTool..".pn_srchcol_lb4"   ] = "End"
  tSet["tool."..sTool..".pn_routine_lb"    ] = "Routine items"
  tSet["tool."..sTool..".pn_routine_lb1"   ] = "Used"
  tSet["tool."..sTool..".pn_routine_lb2"   ] = "End"
  tSet["tool."..sTool..".pn_routine_lb3"   ] = "Type"
  tSet["tool."..sTool..".pn_routine_lb4"   ] = "Name"
  tSet["tool."..sTool..".pn_display_lb"    ] = "Piece display"
  tSet["tool."..sTool..".pn_pattern_lb"    ] = "Write pattern"
  tSet["Cleanup_"..sLimit                  ] = "Assembled track pieces"
  tSet["Cleaned_"..sLimit                  ] = "Cleaned up all track pieces"
  tSet["SBoxLimit_"..sLimit                ] = "You've hit the spawned tracks limit!"
  tSet["tool."..sTool..".logsmax"          ] = "Defines how many log lines the script will send in the log"
  tSet["tool."..sTool..".logsmax_con"      ] = "Logging lines:"
  tSet["tool."..sTool..".logfile"          ] = "When enabled forces the log output in a dedicated system log file"
  tSet["tool."..sTool..".logfile_con"      ] = "Enable logging file:"
  tSet["tool."..sTool..".sizeucs"          ] = "Scale set for the coordinate systems displayed"
  tSet["tool."..sTool..".sizeucs_con"      ] = "Scale UCS:"
  tSet["tool."..sTool..".maxstatts"        ] = "Defines how many stack attempts the script will try before failing"
  tSet["tool."..sTool..".maxstatts_con"    ] = "Stack attempts:"
  tSet["tool."..sTool..".incsnpang"        ] = "Defines the angular incremental step when button sliders are used"
  tSet["tool."..sTool..".incsnpang_con"    ] = "Angular step:"
  tSet["tool."..sTool..".incsnplin"        ] = "Defines the linear incremental step when button sliders are used"
  tSet["tool."..sTool..".incsnplin_con"    ] = "Linear step:"
  tSet["tool."..sTool..".enradmenu"        ] = "When enabled turns on the usage of the workmode radial menu"
  tSet["tool."..sTool..".enradmenu_con"    ] = "Enable radial menu"
  tSet["tool."..sTool..".enpntmscr"        ] = "When enabled turns on the switching active points via mouse scroll"
  tSet["tool."..sTool..".enpntmscr_con"    ] = "Enable point scroll"
  tSet["tool."..sTool..".exportdb"         ] = "When enabled turns on the database export as one large file"
  tSet["tool."..sTool..".exportdb_con"     ] = "Enable database export"
  tSet["tool."..sTool..".modedb"           ] = "Change this to make tool database operate in different storage mode"
  tSet["tool."..sTool..".modedb_con"       ] = "Database mode:"
  tSet["tool."..sTool..".devmode"          ] = "When enabled turns on the developer mode for tracking and debugging"
  tSet["tool."..sTool..".devmode_con"      ] = "Enable developer mode"
  tSet["tool."..sTool..".maxtrmarg"        ] = "Change this to adjust the time between tool traces"
  tSet["tool."..sTool..".maxtrmarg_con"    ] = "Trace margin:"
  tSet["tool."..sTool..".maxmenupr"        ] = "Change this to adjust the number of the decimal places in the menu"
  tSet["tool."..sTool..".maxmenupr_con"    ] = "Decimal places:"
  tSet["tool."..sTool..".maxmass"          ] = "Change this to adjust the maximum mass that can be applied on a piece"
  tSet["tool."..sTool..".maxmass_con"      ] = "Mass limit:"
  tSet["tool."..sTool..".maxlinear"        ] = "Change this to adjust the maximum linear offset on a piece"
  tSet["tool."..sTool..".maxlinear_con"    ] = "Offset limit:"
  tSet["tool."..sTool..".maxforce"         ] = "Change this to adjust the maximum force limit when creating welds"
  tSet["tool."..sTool..".maxforce_con"     ] = "Force limit:"
  tSet["tool."..sTool..".maxactrad"        ] = "Change this to adjust the maximum active radius for obtaining point ID"
  tSet["tool."..sTool..".maxactrad_con"    ] = "Radius limit:"
  tSet["tool."..sTool..".maxstcnt"         ] = "Change this to adjust the maximum pieces to be created in stacking mode"
  tSet["tool."..sTool..".maxstcnt_con"     ] = "Stack limit:"
  tSet["tool."..sTool..".enwiremod"        ] = "When enabled turns on the wiremod expression chip extension"
  tSet["tool."..sTool..".enwiremod_con"    ] = "Enable wire expression"
  tSet["tool."..sTool..".enctxmenu"        ] = "When enabled turns on the tool dedicated context menu for pieces"
  tSet["tool."..sTool..".enctxmenu_con"    ] = "Enable context menu"
  tSet["tool."..sTool..".enctxmall"        ] = "When enabled turns on the tool dedicated context menu for all props"
  tSet["tool."..sTool..".enctxmall_con"    ] = "Enable context menu for all props"
  tSet["tool."..sTool..".endsvlock"        ] = "When enabled turns on the external pluggable DSV databases file lock"
  tSet["tool."..sTool..".endsvlock_con"    ] = "Enable DSV database lock"
  tSet["tool."..sTool..".curvefact"        ] = "Change this to adjust the curving factor tangent coefficient"
  tSet["tool."..sTool..".curvefact_con"    ] = "Curve factor:"
  tSet["tool."..sTool..".curvsmple"        ] = "Change this to adjust the curving interpolation samples"
  tSet["tool."..sTool..".curvsmple_con"    ] = "Curve samples:"
  tSet["tool."..sTool..".crvturnlm"        ] = "Change this to adjust the turn curving sharpness limit for the segment"
  tSet["tool."..sTool..".crvturnlm_con"    ] = "Curvature turn:"
  tSet["tool."..sTool..".crvleanlm"        ] = "Change this to adjust the lean curving sharpness limit for the segment"
  tSet["tool."..sTool..".crvleanlm_con"    ] = "Curvature lean:"
  tSet["tool."..sTool..".spawnrate"        ] = "Change this to adjust the amount of track segments spawned per server tick"
  tSet["tool."..sTool..".spawnrate_con"    ] = "Spawning rate:"
  tSet["tool."..sTool..".bnderrmod"        ] = "Change this to define the behavior when clients are spawning pieces outside of map bounds"
  tSet["tool."..sTool..".bnderrmod_off"    ] = "Allow stack/spawn without restriction"
  tSet["tool."..sTool..".bnderrmod_log"    ] = "Deny stack/spawn the error is logged"
  tSet["tool."..sTool..".bnderrmod_hint"   ] = "Deny stack/spawn hunt message is displayed"
  tSet["tool."..sTool..".bnderrmod_generic"] = "Deny stack/spawn generic message is displayed"
  tSet["tool."..sTool..".bnderrmod_error"  ] = "Deny stack/spawn error message is displayed"
  tSet["tool."..sTool..".bnderrmod_con"    ] = "Bounding mode:"
  tSet["tool."..sTool..".maxfruse"         ] = "Change this to adjust the depth of how many frequently used pieces are there"
  tSet["tool."..sTool..".maxfruse_con"     ] = "Frequent pieces:"
  tSet["tool."..sTool..".timermode_ap"     ] = "Click this to apply your changes to the SQL memory manager configuration"
  tSet["tool."..sTool..".timermode_ap_con" ] = "Apply memory settings"
  tSet["tool."..sTool..".timermode_md"     ] = "Change this to adjust the timer algorithm of the SQL memory manager"
  tSet["tool."..sTool..".timermode_lf"     ] = "Change this to adjust the amount of time the record spends in the cache"
  tSet["tool."..sTool..".timermode_lf_con" ] = "Record life:"
  tSet["tool."..sTool..".timermode_rd"     ] = "When enabled wipes the record from the cache by forcing a nil value"
  tSet["tool."..sTool..".timermode_rd_con" ] = "Enable record deletion"
  tSet["tool."..sTool..".timermode_ct"     ] = "When enabled forces the garbage collection to run on record deletion"
  tSet["tool."..sTool..".timermode_ct_con" ] = "Enable garbage collection"
  tSet["tool."..sTool..".timermode_mem"    ] = "Memory manager for SQL table:"
  tSet["tool."..sTool..".timermode_cqt"    ] = "Cache query timer via record request"
  tSet["tool."..sTool..".timermode_obj"    ] = "Object timer attached to cache record"
  tSet["tool."..sTool..".logfile"          ] = "When enabled starts streamming the log into dedicated file"
  tSet["tool."..sTool..".logfile_con"      ] = "Enable logging file"
  tSet["tool."..sTool..".logsmax"          ] = "Change this to adjust the log streaming maximum output lines written"
  tSet["tool."..sTool..".logsmax_con"      ] = "Logging lines:"
  tSet["sbox_max"..sLimit                  ] = "Change this to adjust the things spawned via track assembly tool on the server"
  tSet["sbox_max"..sLimit.."_con"          ] = "Tracks amount:"
return tSet end
