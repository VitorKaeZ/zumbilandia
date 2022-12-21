player = {
    vida = 200,
    pots = {},
    nome = '',
}


function player:novo(nome)
    local obj = {}
    setmetatable(obj, self)
    obj.vida = 200
    obj.pots = {}
    obj.nome = nome


    obj.vivo = function(self)
        return self.vida > 0
    end


    obj.atacado = function(self, forca)
        if self:vivo() then
            self.vida = self.vida - forca

            if self:vivo() then
                print("Após o ataque, " .. self.nome .. " agora tem " .. self.vida .. " de vida!")
            else
                print("Após o ataque, " .. self.nome .. " morreu!")
            end
        else
            print(self.nome .. " já está morto!")
        end
    end


    obj.matar = function(self)
        if self:vivo() then
            self.vida = 0
            print(self.nome .. " morreu!")
        else
            print(self.nome .. " já está morto!")
        end
    end



    obj.obter_pocao = function(self, pocao)
        return table.insert(self.pots, pocao)
    end



    obj.usar_pocao = function(self)
        if #self.pots > 0 then
            self.vida = self.vida + self.pots[1].vida
            table.remove(self.pots, 1)
            print(self.nome .. " usou uma poção e agora tem " .. self.vida .. " de vida!")
        else
            print(self.nome .. " não tem poções")
        end
    end



    return obj
end

-- function player:vivo()
--     return self.vida > 0
-- end

-- function player:atacado(forca)
--     if self:vivo() then
--         self.vida = self.vida - forca

--         if self:vivo() then
--             print("Após o ataque, " .. self.nome .. " agora tem " .. self.vida .. " de vida!")
--         else
--             print("Após o ataque, " .. self.nome .. " morreu!")
--         end
--     else
--         print(self.nome .. " já está morto!")
--     end
-- end

--

return player
