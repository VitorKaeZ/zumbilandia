local enemy = require('entidades/inimigo')
local player = require('entidades/player')
local zumbi = {}

function zumbi.novo()
    local zumbi = enemy.novo(50, 'zumbis')
    zumbi.come_cerebros = true
    zumbi.explode = false
    return zumbi
end

function zumbi.novo_bomber()
    local zumbi = enemy.novo(50, 'zumbis')
    zumbi.come_cerebros = false
    zumbi.explode = true
    return zumbi
end

function zumbi.atacar(instancia, playerAtual)
    if instancia == nil then
        print('Esse zumbi já está morto!')
    elseif instancia.explode then
        print('Zumbi explodiu!')
        player.matar(playerAtual)
        return
    elseif player.vivo(playerAtual) then
        print('Zumbi Atacou ' .. playerAtual.nome .. '!')
        player.atacado(playerAtual, instancia.forca)
        return
    end
end

return zumbi
