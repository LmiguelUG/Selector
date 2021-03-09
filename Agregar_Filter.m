function [ filters ] = Agregar_Filter( atributo, valor_atributo, filters )

        tamano_filters = size(filters);
    if tamano_filters(2) == 0

        valores_atributo    = [];
        valores_atributo{1} = valor_atributo;

        nuevo_filter = Filter(atributo, valores_atributo);
        filters{1}   = nuevo_filter;

    else

        bandera_01 = false;
        for i = 1: 1: tamano_filters(2)
            tamano_valores_atributo = size(filters{i}.valores_atributo);

            if strcmp(filters{i}.atributo, atributo) == 1

                bandera_01 = true;
                bandera_02 = false;
                for j = 1: 1: tamano_valores_atributo(2)
                    if strcmp(filters{i}.valores_atributo{j},valor_atributo) == 1
                        bandera_02 = true; % si la bandera es true, el valor de una caracteristica (ejemplo: El valor "NEMA" para la caracteristica "Norma") ya esta en filters               
                    end
                end

                if bandera_02 == false
                    filters{i}.valores_atributo{tamano_valores_atributo(2) + 1} = valor_atributo;
                end
            end
        end

        if bandera_01 == false
                valores_atributo    = [];
                valores_atributo{1} = valor_atributo;

                nuevo_filter = Filter(atributo, valores_atributo);
                filters{tamano_filters(2)+1}  = nuevo_filter;
        end

    end
end
