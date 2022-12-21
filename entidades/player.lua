local player = {}

function player.novo(nome)
    return {
        vida = 200,
        pots = {},
        nome = nome
    }
end

function player.obter_pocao(instancia, pocao)
    table.insert(instancia.pots, pocao)
end

function player.atacado(instancia, forca)
    if player.vivo(instancia) then
        instancia.vida = instancia.vida - forca

        if player.vivo(instancia) then
            print("Após o ataque, " .. instancia.nome .. " agora tem " .. instancia.vida .. " de vida!")
        else
            print("Após o ataque, " .. instancia.nome .. " morreu!")
        end
    else
        print(instancia.nome .. " já está morto!")
    end
end

function player.matar(instancia)
    if player.vivo(instancia) then
        instancia.vida = 0
        print(instancia.nome .. " morreu!")
    else
        print(instancia.nome .. " já está morto!")
    end
end

function player.vivo(instancia)
    return instancia.vida > 0
end

function player.usar_pocao(instancia)
    if #instancia.pots > 0 then
        instancia.vida = instancia.vida + instancia.pots[1].vida
        table.remove(instancia.pots, 1)
        print(instancia.nome .. " usou uma poção e agora tem " .. instancia.vida .. " de vida!")
    else
        print(instancia.nome .. " não tem poções")
    end
end

return player
