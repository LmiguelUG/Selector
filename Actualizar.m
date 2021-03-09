function [ inventario_02 ] = Actualizar(filters, checks, edits, axes_03, popupmenu_01)
    
    tamano_filters    = size(filters); 
    
    inventario_01 = [];
    inventario_02 = Get_Motors();
    tamano_filters = size(filters);
    index_01 = 1;
    
    if tamano_filters(2) == 0
        inventario_02 = [];
    else
        
        for i = 1: 1: tamano_filters(2)
            longitud_01 = size(filters{i}.valores_atributo);
            tamano_inventario_02 = size(inventario_02);
            
            if strcmp(filters{i}.atributo, 'Norma') == 1
               for j = 1: 1: longitud_01(2)                  
                   for k = 1: 1: tamano_inventario_02(2)
                       if strcmp (inventario_02{k}.norma_motor, filters{i}.valores_atributo{j}) == 1
                           inventario_01{index_01} = inventario_02{k};
                           index_01 = index_01 + 1;
                       end
                   end
               end                    
            end
            
            if strcmp(filters{i}.atributo, 'Potencia') == 1
               for j = 1: 1: longitud_01(2)
                   for k = 1: 1: tamano_inventario_02(2)
                       if strcmp (inventario_02{k}.potencia, filters{i}.valores_atributo{j}) == 1
                           inventario_01{index_01} = inventario_02{k};
                           index_01 = index_01 + 1;
                       end
                   end
               end                    
            end
            
            if strcmp(filters{i}.atributo, 'Numero de Polos') == 1
               for j = 1: 1: longitud_01(2)
                   for k = 1: 1: tamano_inventario_02(2)
                       
                       A = num2str(inventario_02{k}.num_polos);
                       B = num2str(filters{i}.valores_atributo{j});
                       if  strcmp( A,B) == 1 
                           inventario_01{index_01} = inventario_02{k};
                           index_01 = index_01 + 1;
                       end
                   end
               end                    
            end
            
            if strcmp(filters{i}.atributo, 'Rotación Sincrona') == 1
               for j = 1: 1: longitud_01(2) 
                   for k = 1: 1: tamano_inventario_02(2)
                       
                       A = num2str(inventario_02{k}.rot_sinc);
                       B = num2str(filters{i}.valores_atributo{j});
                       if  strcmp(A,B) == 1
                           inventario_01{index_01} = inventario_02{k};
                           index_01 = index_01 + 1;
                       end
                   end
               end                    
            end
            
            if strcmp(filters{i}.atributo, 'Voltaje') == 1
               for j = 1: 1: longitud_01(2) 
                   for k = 1: 1: tamano_inventario_02(2)
                       
                       if  strcmp(inventario_02{k}.voltaje,filters{i}.valores_atributo{j}) == 1
                           inventario_01{index_01} = inventario_02{k};
                           index_01 = index_01 + 1;
                       end
                   end
               end                    
            end
            
            if strcmp(filters{i}.atributo, 'Pies') == 1
               for j = 1: 1: longitud_01(2) 
                   for k = 1: 1: tamano_inventario_02(2)
                       
                       if  strcmp(inventario_02{k}.patas,filters{i}.valores_atributo{j}) == 1
                           inventario_01{index_01} = inventario_02{k};
                           index_01 = index_01 + 1;
                       end
                   end
               end                    
            end
            
            if strcmp(filters{i}.atributo, 'Brida') == 1
               for j = 1: 1: longitud_01(2) 
                   for k = 1: 1: tamano_inventario_02(2)              
                       if  strcmp(inventario_02{k}.brida,filters{i}.valores_atributo{j}) == 1
                           inventario_01{index_01} = inventario_02{k};
                           index_01 = index_01 + 1;
                       end
                   end
               end                    
            end
            
            inventario_02 = [];              
            tamano_inventario_01 = size(inventario_01);
            
            if tamano_inventario_01 == 0
                
            else               
                for m =1: 1: tamano_inventario_01(2)
                    inventario_02{m} = inventario_01{m};
                end
            end
            
            inventario_01 = [];
            index_01 = 1;
        end
    end
    
    Actualizar_Menu(inventario_02, popupmenu_01, axes_03, edits);
end

