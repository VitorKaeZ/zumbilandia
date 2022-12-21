local player = require('entidades.player')
local pocao = require('entidades.pot')
local zumbi = require('entidades.zumbi')

-- Criaçao de Instâncias/Objetos das Classes Criadas
local player1 = player:novo('Orientadão')
local player2 = player:novo('Objetoncio')


local zumbi1 = zumbi:novo()
local zumbi2 = zumbi:novo()
local zumbi3 = zumbi:novo_bomber()


-- Adicionar inventário

player1:obter_pocao(pocao:novo())
player2:obter_pocao(pocao:novo())

assert(#player1.pots == 1)
assert(#player2.pots == 1)

-- Zumbi atacam os players!
zumbi1:atacar(player1)
zumbi1:atacar(player1)
player1:usar_pocao()
zumbi1:atacar(player1)
zumbi1:atacar(player1)
player1:usar_pocao()
zumbi1:atacar(player1)
zumbi1:atacar(player1)


zumbi3:atacar(player2)
