function [filters_aux] = Quitar_Filtro( filters, atributo, valor_atributo )

        filters_aux = [];
        tamano_filters = size(filters);
      
     if tamano_filters(2) == 0
     else
		index_01 = 1;

        for i = 1: 1: tamano_filters(2)
            tamano_valores_atributo = size(filters{i}.valores_atributo);
            valores_atributo_aux = [];
            bandera_01 = false;
            bandera_02 = false;
            if strcmp(filters{i}.atributo, atributo) == 1

                index_02   = 1;

                for j = 1: 1: tamano_valores_atributo(2)
                    if strcmp(filters{i}.valores_atributo{j},valor_atributo) == 1
                        bandera_02 = true;
                    else           
                        valores_atributo_aux{index_02} = filters{i}.valores_atributo{j};
                        index_02 = index_02 + 1;
                        bandera_01 = true;
                    end
                end
            end
            
            
            if bandera_01 == false
                if bandera_02 == false
                    filters_aux{index_01} = filters{i};
                    index_01 = index_01 + 1;
                end
            else
                tamano_valores_atributo_aux = size(valores_atributo_aux);
                if tamano_valores_atributo_aux(2) == 0
                    
                else
                    filters_aux{index_01} = Filter(filters{i}.atributo, valores_atributo_aux);
                    index_01 = index_01 + 1;
                end
            end
        end 
     end  
end