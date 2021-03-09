function [Inventario] = Get_Motors ()

datos = xlsread('Motores');
[FILAS, COLUMNAS] = size(datos);

Inventario = [];

for i = 1:FILAS
    

    for j = 1:COLUMNAS
        
        % PARA LA NORMA
        if j == 1
            if datos(i,j) == 1 
                norma_motor = 'NEMA';
            end
            
            if datos(i,j) == 2 
                norma_motor = 'ICE';
            end
            
        % PARA EL TIPO DE MOTOR    
        elseif j == 2
            if datos(i,j) == 1
                tipo_motor = 'De Uso General ODP (Hierro Gris)';
            end
            
            if datos(i,j) == 2
                tipo_motor = 'De Uso General TEFC (Chapa Acero)';
            end 
            
            if datos(i,j) == 3
                tipo_motor = 'De Uso General TEFC (Hierro Gris)';
            end
            
            if datos(i,j) == 4
                tipo_motor = 'De Uso General TEFC (Aluminio)';
            end
            
            
        % PARA EL SUBTIPO DEL MOTOR
        elseif j == 3 
            if datos(i,j) == 1
                subtipo_motor = 'W40 Standard Efficicency';
            end
            
            if datos(i,j) == 2
                subtipo_motor = 'W40 High Efficiency';
            end
            
            if datos(i,j) == 3
                subtipo_motor = 'W40 Premium Efficiency';
            end
            
            
            if datos(i,j) == 4
                subtipo_motor = 'General';
            end
            
            if datos(i,j) == 5
                subtipo_motor = 'General Standard Efficiency';
            end
            
            if datos(i,j) == 6
                subtipo_motor = 'W22 Super Premium Efficiency';
            end
            
            if datos(i,j) == 7
                subtipo_motor = 'W22 NEMA Premium Efficiency';
            end
            
            if datos(i,j) == 8
                subtipo_motor = 'W22 High Efficiency';
            end
            
            if datos(i,j) == 9
                subtipo_motor = 'W12 General';
            end
            
            if datos(i,j) == 10
                subtipo_motor = 'W22 General';
            end
            
            if datos(i,j) == 11
                subtipo_motor = 'W40 General';
            end
            
            
        % CODIGO DEL MOTOR
        elseif j == 4
            codigo = datos(i,j);
           
            
        % PARA LA POTENCIA (TENSIÓN)
        elseif j == 5
            
            if strcmp(norma_motor, 'NEMA') == 1
                espacio = ' ';
                if (strcmp(num2str(datos(i,j)),'0.33') == 1)
                    potencia = [num2str(datos(i,j)),espacio, 'KW'];
               else
                    potencia = [num2str(datos(i,j)),espacio, 'HP'];
                end
                
            end
            
            if strcmp(norma_motor, 'ICE') == 1
                espacio = ' ';
                
                if (strcmp(num2str(datos(i,j)),'0.37') == 1)
                    potencia = [num2str(datos(i,j)),espacio, 'HP'];
               else
                    potencia = [num2str(datos(i,j)),espacio, 'KW'];
                end
                
            end
            
        % PARA EL NUMERO DE POLOS
        elseif j == 6
            num_polos = datos(i,j);
            
            
        % PARA EL ROTOR SINCRONO
        elseif j == 7
            rot_sinc = datos(i,j);
            
        % PARA EL VOLTAJE
        elseif j == 8
            
            if datos(i,j) == 0
                voltaje = '208-230/460 V';
            
            elseif datos(i,j) == 1
                voltaje = '230 V';
                
            elseif datos(i,j) == 2
                voltaje = '208-230/460//380 V';
                
            elseif datos(i,j) == 3
                voltaje = '230/460//380 V';
             
            elseif datos(i,j) == 4
                voltaje = '230/460 V';
                
            elseif datos(i,j) == 5
                voltaje = '400 V';
                
            elseif datos(i,j) == 6
                voltaje = '380-415/660//415 V';
                
            elseif datos(i,j) == 7
                voltaje = '220-240/380-415//460 V';
             
            elseif datos(i,j) == 8
                voltaje = '380-400-415/660-690//460 V';
                
            end
        
        % PARA LAS PATAS
        elseif j == 9
            if datos(i,j) == 0
                patas = 'Con Pies';
                
            elseif datos(i,j) == 1
                patas = 'Sin Pies';
                
            end
            
        % PARA LA BRIDA
        elseif j == 10
            if datos(i,j) == 0
                brida = 'Sin Brida';
                
            elseif datos(i,j) == 1
                brida = 'FC 149';
            
            elseif datos(i,j) == 2
                brida = 'C';
            
            elseif datos(i,j) == 3
                brida = 'D';
                        
            elseif datos(i,j) == 4
                brida = 'FF';
            
            elseif datos(i,j) == 5
                brida = 'C-DIN';    
            end
            
        end
    end
    motor_nuevo = Motor_Induccion(norma_motor,tipo_motor,subtipo_motor,codigo,potencia,num_polos,rot_sinc,voltaje,patas,brida);
    Inventario{i} = motor_nuevo;
end