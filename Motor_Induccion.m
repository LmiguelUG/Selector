classdef Motor_Induccion<handle
    %  UNTITLED Summary of this class goes here
    %  Detailed explanation goes here
    
    properties
        norma_motor   = ''
        tipo_motor    = ''
        subtipo_motor = ''
        codigo        = 0
        potencia      = ''
        num_polos     = 0
        rot_sinc      = 0
        voltaje       = ''
        patas         = ''
        brida         = ''
        
    end
    
    methods
       function obj = Motor_Induccion(norma_motor, tipo_motor, subtipo_motor, codigo, potencia, num_polos, rot_sinc, voltaje, patas, brida)
        obj.norma_motor = norma_motor;
        obj.tipo_motor = tipo_motor;
        obj.subtipo_motor = subtipo_motor;
        obj.codigo = codigo;
        obj.potencia = potencia;
        obj.num_polos    = num_polos;
        obj.rot_sinc     = rot_sinc;
        obj.voltaje      = voltaje;
        obj.patas        = patas;
        obj.brida        = brida;
       end
        
    end
    
end

