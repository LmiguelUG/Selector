function [ bandera, index ] = Se_Encuentra( codigo, inventario_02)
    
    longitud_inventario_02 = size(inventario_02);
    bandera = false;
    index   = 0;
    
    for j=1:1:longitud_inventario_02(2)
        codigo_01 = num2str(inventario_02{j}.codigo);
        if strcmp( codigo_01, codigo) == 1
               bandera = true;
               index = j;
        end
    end
end

