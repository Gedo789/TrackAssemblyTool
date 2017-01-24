--[[
 * The purpose of this Lua file is to add your track pack pieces to the
 * track assembly tool, so they can appear in the tool selection menu
]]--

-- Change this to your addon name
local myAddon = "Test's track pack" -- Your addon name goes here

-- Change this if you want to use different in-game type
local myType  = myAddon -- The type your addon resides in TA with

--[[
 * For actually produce an error you can replace the /print/
 * statement with one of following API calls:
 * http://wiki.garrysmod.com/page/Global/error
 * http://wiki.garrysmod.com/page/Global/Error
 * http://wiki.garrysmod.com/page/Global/ErrorNoHalt
]]
local myError = print

-- This is used for addon relation prefix. Fingers away from it
local myPrefix = myAddon:gsub("[^%w]","_")

-- This is the script path. It tells TA who wants to add these models
-- Do not touch this also, it is used for debugging
local myScript = debug.getinfo(1)
      myScript = myScript and myScript.source or "N/A"

-- Tell TA what custom script we just called don't touch it
trackasmlib.LogInstance(">>> "..myScript)

-- And what parameters I was called with ;)
trackasmlib.LogInstance("Status: {"..myAddon..", "..myPrefix.."}")

--[[
 * Register the addon to the auto-load prefix list when the
 * PIECES file is missing. The auto-load list is located in
 * (/garrysmod/data/trackassembly/trackasmlib_dsv.txt)
 * A.k.a the DATA folder of Garry's mod
]]--
if(not trackasmlib.RegisterDSV(myPrefix, myScript)) then
  myError("Failed to register DSV: "..myScript)
end -- Third argument is the delimiter. The default tab is used

--[[
 * This is used if you want to make internal categories for your addon
 * You must make a function as a string under the hash of your addon
 * The function must take only one argument and that is the model
 * For every sub-category of your track pieces, you must return a table
 * with that much elements or return a /nil/ value to add the piece to
 * the root of your branch. You can also return a second value if you
 * want to override the track piece name.
]]--
local myCategory ={
  [myType] = {Txt = [[
    function(m)
      local r = m:gsub("models/props_phx/construct/",""):gsub("_","/")
      local s = r:find("/"); r = s and r:sub(1,s-1) or nil
      local n = nil
      if(r) then
        if(r ==  "metal" ) then n = "My metal plate" end
        if(r == "windows") then n = "My glass plate" end
      end
      r = r and r:gsub("^%l", string.upper) or nil
      p = r and {r} or nil
      return p, n
    end
  ]]}
}

--[[
* This logic statement is needed for reporting the error in the console if the
 * process fails.
 @ bSuccess = StoreExternalCategory(nInd, sPref, tData)
 * nInd   > The index equal indent format to be stored with ( generally = 3 )
 * sPref  > An export file custom prefix. For synchronizing it must be related to your addon
 * tData  > The category functional definition you want to use to divide your stuff with
]]--
if(CLIENT) then
  if(not trackasmlib.StoreExternalCategory(3, myPrefix, myCategory)) then
    myError("Failed to synchronize category: "..myScript)
  end
end

--[[
 * Create a table and populate it as shown below
 * In the square brackets goes your model,
 * and then for every active point, you must have one array of
 * strings, where the elements match the following data settings.
 * You can use the reverse sign event /@/ to reverse any component of the
 * parameterization and also the disable event /#/ to make TA auto-fill
 * the value provided
 * {TYPE, NAME, LINEID, POINT, ORIGIN, ANGLE, CLASS}
 * TYPE   > This string is the name of the type your stuff will reside in the panel
 *          Disabling this, makes it use the value of the /DEFAULT_TYPE/ variable
 *          If it is emty uses the string /TYPE/, so make sure you fill this
 * NAME   > This is the name of your track piece. Put /#/ here to be auto-generated from
 *          the model ( from the last slash to the file extension )
 * LINEID > This is the ID of the point that can be selected for building. They must be
 *          sequential
 * POINT  > This is the position vector that TA searches and selects.
 *          An empty string is treatedas the ORIGIN.
 *          Disabling this using the disable event makes it hidden when the active point is searched for
 * ORIGIN > This is the origin relative to which the next track piece position is calculated
 *          An empty string is treated as {0,0,0}. Disabling this makes it non-selectable by the holder
 * ANGLE  > This is the angle relative to which the forward and up vectors are calculated.
 *          An empty string is treated as {0,0,0}. Disabling this also makes it use {0,0,0}
 * CLASS  > This string is filled up when your entity class is not /prop_physics/ but something else
 *          used by ents.Create of the gmod ents api library. Keep this empty if your stuff is a normal prop
]]--
local myTable = {
  ["models/props_phx/construct/metal_plate1x2.mdl"] = { -- Here goes the model of your pack
    {myType ,"#", 1, "","0,-47.455105,1.482965","0,-90,0",""}, -- The first point parameter
    {myType ,"#", 2, "","0, 47.455105,1.482965","0, 90,0",""}  -- The second point parameter
  },
  ["models/props_phx/construct/windows/window1x2.mdl"] = {
    {myType ,"#", 1, "","0,-23.73248,1.482965","0,-90,0",""},
    {myType ,"#", 2, "","0, 71.17773,1.482965","0, 90,0",""}
  }
}

--[[
 * This logic statement is needed for reporting the error in the console if the
 * process fails.
 @ bSuccess = SynchronizeDSV(sTable, sDelim, bRepl, tData, sPref)
 * sTable > The table you want to sync
 * sDelim > The delimiter used by the server/client ( defaut is a tab symbol )
 * bRepl  > If set to /true/, makes the api to replace the repeting models with
            these of your addon. This is nice when you constantly update your track packs
            If set to /false/ keeps the current model in the
            database and ignores yours if they are the same file.
 * tData  > A data table like the one described above
 * sPref  > An export file custom prefix. For synchronizing it must be related to your addon
]]--
if(not trackasmlib.SynchronizeDSV("PIECES", "\t", true, myTable, myPrefix)) then
  myError("Failed to synchronize track pieces: "..myScript)
end

trackasmlib.LogInstance("<<< "..myScript)