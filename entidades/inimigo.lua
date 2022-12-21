local enemy = {
    forca = 0,
    categoria = ''
}

function enemy:novo(forca, categoria)
    obj = {}
    setmetatable(obj, self)
    obj.forca = forca
    obj.categoria = categoria
    return obj
end

return enemy
