function buyAssassin()
  if acceptWindow then
    return true
  end

  local acceptFunc = function()
    g_game.talk('!buyaddon assassin')
    acceptWindow:destroy()
    acceptWindow = nil
  end
  local cancelFunc = function() acceptWindow:destroy() acceptWindow = nil end

  acceptWindow = displayGeneralBox(tr('Accept transaction'), tr("Do you really want to buy this item?"),
  { { text=tr('Yes'), callback=acceptFunc },
    { text=tr('No'), callback=cancelFunc },
    anchor=AnchorHorizontalCenter }, acceptFunc, cancelFunc)
  return true
end

function buyArcher()
  if acceptWindow then
    return true
  end

  local acceptFunc = function()
    g_game.talk('!buyaddon Archer')
    acceptWindow:destroy()
    acceptWindow = nil
  end
  local cancelFunc = function() acceptWindow:destroy() acceptWindow = nil end

  acceptWindow = displayGeneralBox(tr('Accept transaction'), tr("Do you really want to buy this item?"),
  { { text=tr('Yes'), callback=acceptFunc },
    { text=tr('No'), callback=cancelFunc },
    anchor=AnchorHorizontalCenter }, acceptFunc, cancelFunc)
  return true
end