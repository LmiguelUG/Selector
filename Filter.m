classdef Filter<handle

        properties
        
            atributo        = '';
            valores_atributo  = []; 
        
        end
        
        methods
            function obj = Filter(atributo, valores_atributo)
                obj.atributo = atributo;
                obj.valores_atributo = valores_atributo;
            end
                        
        end
end