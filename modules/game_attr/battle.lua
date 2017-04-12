AtributosPanel = nil
AtributosButton = nil

function init()
  AtributosButton = modules.client_topmenu.addRightGameToggleButton('AtributosButton', tr('Atributos'), 'atributos.png', toggle)
  AtributosButton:setOn(false)

  AtributosWindow = g_ui.displayUI('battle.otui')
  connect(g_game, { onGameStart = online,
    onGameEnd = offline})

  g_keyboard.bindKeyDown('Ctrl+D', toggle)
  AtributosPanel = AtributosWindow:getChildById('contentsPanel')

  if not g_game.isOnline() then
    AtributosWindow:hide()
  end

  if AtributosButton:isOn() then
    AtributosWindow:hide()
    AtributosButton:setOn(false)
  else
    AtributosWindow:hide()
    AtributosButton:setOn(false)
  end
end

function terminate()
  disconnect(g_game, { onGameStart = online,
   onGameEnd = offline})

  AtributosButton:destroy()
end

function toggle()
    if not AtributosButton:isOn() then
        doOpen()
    else
        doClose()
    end
end

function doOpen()
    AtributosButton:setOn(true)
    AtributosWindow:show()
end

function doClose()
    AtributosButton:setOn(false)
    AtributosWindow:hide()
end
