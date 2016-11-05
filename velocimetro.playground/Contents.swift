//: Playground - noun: a place where people can play
/*
 Programa  para la semana 4
 Juan Gabriel Gonzàlez
 */

import UIKit

enum velocidades : Int{
    
    case Apagado        = 0   //representa una velocidad de 0
    case VelocidadBaja  = 20 // representa una velocidad de 20km por hora.
    case VelocidadMedia = 50  // representa una velocidad de 50km por hora
    case VelocidadAlta  = 120 //representa una velocidad de 120km por hora
    
    init (velocidadInicial : velocidades){
        self = velocidadInicial
    }
    
    
}



class Auto  {
    
    
    var velocidad : velocidades
    
    
    init (velocidad : Int){
        self.velocidad = velocidades(rawValue: velocidad)!
        
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
        
        var num:Int = 0
        var msj :String = ""
        
        
        
        switch self.velocidad.rawValue {
        case 0:
            
            num = velocidad.rawValue
            msj = "Apagado"
            self.velocidad = velocidades (rawValue: 20)!
            
        case 20:
            
            num = velocidad.rawValue
            msj = "VelocidadBaja"
            self.velocidad = velocidades (rawValue: 50)!
            
        case 50:
            
            num = velocidad.rawValue
            msj = "VelocidadMedia"
            self.velocidad = velocidades (rawValue: 120)!
            
        case 120:
            
            num = velocidad.rawValue
            msj = "VelocidadAlta"
            self.velocidad = velocidades (rawValue: 50)!
        default:
           self.velocidad = velocidades (rawValue: 0)!
        }
        
        
        return  (num,msj)
        
        
    }
    
    
    
    
}



var auto = Auto(velocidad:0)


for  n in 0...20 {
    
    var  res=auto.cambioDeVelocidad()
    
    
    print ("\(res.actual),"+"\(res.velocidadEnCadena)"   )
}
