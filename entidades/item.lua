local item = {
    tipo = '',
    funcao = '',
    custo = 0
}


function item:novo(tipo, funcao, custo)
    local obj = {}
    setmetatable(obj, self)
    obj.tipo = tipo
    obj.funcao = funcao
    obj.custo = custo
    return obj
end

return item
