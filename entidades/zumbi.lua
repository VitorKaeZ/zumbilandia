local enemy = require('entidades/inimigo')
local zumbi = {}

function zumbi:novo()
    obj = enemy:novo(50, 'zumbis')
    obj.come_cerebros = true
    obj.explode = false
    obj.atacar = function(self, playerAtual)
        if self == nil then
            print('Esse zumbi já está morto!')
            return
        elseif self.explode then
            print('Zumbi explodiu!')
            playerAtual:matar()
            return
        elseif playerAtual:vivo() then
            print('Zumbi Atacou ' .. playerAtual.nome .. '!')
            playerAtual:atacado(self.forca)
            return
        end
    end

    return obj
    -- local zumbi = enemy.novo(50, 'zumbis')
    -- zumbi.come_cerebros = true
    -- zumbi.explode = false
    -- return zumbi
end

function zumbi:novo_bomber()
    obj = zumbi:novo()
    obj.come_cerebros = false
    obj.explode = true
    return obj
end

return zumbi
