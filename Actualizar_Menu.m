function Actualizar_Menu( inventario_02, popupmenu_01, axes_03, edits )
       
       
    longitud_inventario_02 = size(inventario_02);
    
    Inventario = [];
    if longitud_inventario_02(2) == 0
        set(popupmenu_01, 'String', 'Ninguno');
        set(popupmenu_01, 'Value', 1);
        
        longitud_edits = size(edits);
        for i = 1: 1: longitud_edits(2)
            
            if i == 9
                set(edits(i), 'Title', '');
            else
                set(edits(i), 'String', '');
            end
            
        end
        
        axes(axes_03);
        [x,map]=imread('./images/unico.png');
        image(x)
        colormap(map);
        axis off
        hold on
        
    else
        
        cadena_02 = '';
        for i = longitud_inventario_02(2): -1: 1
            
            codigo    = num2str(inventario_02{i}.codigo);
            polos     = num2str(inventario_02{i}.num_polos);
            brida     = num2str(inventario_02{i}.brida);
            tipo      = inventario_02{i}.tipo_motor;
            potencia  = num2str(inventario_02{i}.potencia);
            espacios  = ' ';

            cadena_01 = [codigo,espacios,potencia,espacios, polos,'P',espacios,brida,espacios,tipo];
        
            if strcmp (cadena_02, '') == 1                  
                cadena_02 = strcat(cadena_01,char(13));                 
            else
                cadena_02 = strvcat(cadena_01,cadena_02); 
            end
        end
        
        set(popupmenu_01, 'String', cadena_02);
        set(popupmenu_01, 'Value', 1);
    end
    
    
    if longitud_inventario_02(2) > 0
        codigo = get(edits(9), 'Title');
        if strcmp(codigo, "") == 1
        else
            [bandera, index] = Se_Encuentra(codigo, inventario_02);

            if bandera == false
                longitud_edits = size(edits);
                for i = 1: 1: longitud_edits(2)
                    if i == 9
                        set(edits(i), 'Title', '');
                    else
                        set(edits(i), 'String', '');
                    end
                end

                axes(axes_03);
                [x,map]=imread('./images/unico.png');
                image(x)
                colormap(map);
                axis off
                hold on 
            end

        end
    end
    
end

