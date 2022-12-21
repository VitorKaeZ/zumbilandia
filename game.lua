local player = require('entidades/player')
local pocao = require('entidades/pot')
local zumbi = require('entidades/zumbi')

-- Criaçao de Instâncias/Objetos das Classes Criadas
local player1 = player.novo('Orientadão')
local player2 = player.novo('Objetoncio')


local zumbi1 = zumbi.novo()
local zumbi2 = zumbi.novo()
local zumbi3 = zumbi.novo_bomber()


-- Adicionar inventário

player.obter_pocao(player1, pocao.novo())
player.obter_pocao(player2, pocao.novo())

assert(#player1.pots == 1)
assert(#player2.pots == 1)


-- Zumbi atacam os players!
zumbi.atacar(zumbi1, player1)
zumbi.atacar(zumbi1, player1)
player.usar_pocao(player1)
zumbi.atacar(zumbi1, player1)
zumbi.atacar(zumbi1, player1)
player.usar_pocao(player1)
zumbi.atacar(zumbi1, player1)
zumbi.atacar(zumbi1, player1)


zumbi.atacar(zumbi3, player2)
