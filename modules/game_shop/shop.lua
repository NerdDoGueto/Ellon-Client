local moduleshopWindow
local moduleshopButton
local moduleshopTabBar
local moduleaddonsPanel
local moduleitemsPanel
local modulepremiumPanel
local modulemountsPanel
local moduleacceptWindow

function init()
  shopWindow = g_ui.displayUI('shop')
  shopWindow:hide()
  
  shopTabBar = shopWindow:getChildById('shopTabBar')
  shopTabBar:setContentWidget(shopWindow:getChildById('shopTabContent'))
  
  premiumPanel = g_ui.loadUI('premium')
  shopTabBar:addTab(tr('Premium'), premiumPanel, '/modules/game_shop/images/shoptabs/premium')
  
  itemsPanel = g_ui.loadUI('items')
  shopTabBar:addTab(tr('Items'), itemsPanel, '/modules/game_shop/images/shoptabs/items')

  addonsPanel = g_ui.loadUI('specials')
  shopTabBar:addTab(tr('Specials'), addonsPanel, '/modules/game_shop/images/shoptabs/specials')

  mountsPanel = g_ui.loadUI('usable')
  shopTabBar:addTab(tr('Usable'), mountsPanel, '/modules/game_shop/images/shoptabs/usable')
  
  mountsPanel = g_ui.loadUI('potions')
  shopTabBar:addTab(tr('Potions'), mountsPanel, '/modules/game_shop/images/shoptabs/potions')
  
  mountsPanel = g_ui.loadUI('backpacks')
  shopTabBar:addTab(tr('Backpacks'), mountsPanel, '/modules/game_shop/images/shoptabs/backpacks')

  shopButton = modules.client_topmenu.addRightGameButton('shopButton', tr('Ellon Shop'), '/modules/game_shop/images/shop', toggle)
end

function terminate()
  shopWindow:destroy()
  shopButton:destroy()
end

function toggle()
  if shopWindow:isVisible() then
    hide()
  else
    show()
  end
end

function show()
  shopWindow:show()
  shopWindow:raise()
  shopWindow:focus()
end

function hide()
  shopWindow:hide()
  if acceptWindow then
    acceptWindow:destroy()
    acceptWindow = nil
  end
end

function addTab(name, panel, icon)
  shopTabBar:addTab(name, panel, icon)
end

function addButton(name, func, icon)
  shopTabBar:addButton(name, func, icon)
end

-- Buy functions:

-- TP and Keys
function buyTeleport()
  if acceptWindow then
    return true
  end

  local acceptFunc = function()
    g_game.talk('!teleport')
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

function buyKey1()
  if acceptWindow then
    return true
  end

  local acceptFunc = function()
    g_game.talk('!key1')
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

function buyKey2()
  if acceptWindow then
    return true
  end

  local acceptFunc = function()
    g_game.talk('!key2')
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

function buyKey3()
  if acceptWindow then
    return true
  end

  local acceptFunc = function()
    g_game.talk('!key3')
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

function buyKey4()
  if acceptWindow then
    return true
  end

  local acceptFunc = function()
    g_game.talk('!key4')
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

function buyKey5()
  if acceptWindow then
    return true
  end

  local acceptFunc = function()
    g_game.talk('!key5')
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

-- Premium
function buyPremium()
  if acceptWindow then
    return true
  end

  local acceptFunc = function()
    g_game.talk('!premium30')
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

function buyPremium2()
  if acceptWindow then
    return true
  end

  local acceptFunc = function()
    g_game.talk('!premium60')
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

function buyPremium3()
  if acceptWindow then
    return true
  end

  local acceptFunc = function()
    g_game.talk('!premium90')
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