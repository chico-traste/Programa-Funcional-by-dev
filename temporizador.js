/*
Programa Funcional: Temporizador
By: Mauricio Daniel Sanabria Mosco aka dev
Fecha: 05-11-2025
Requerimentos: Node.js
*/

    function cadaSegundo(callback) {
        let n = 0;
        
        const intervalo = setInterval(() => {
            callback();
            n++;
                if (n === 7) clearInterval(intervalo);
        }, 1000);
    }

    function mensaje(){
        console.log("La hora es: " + new Date().toLocaleTimeString());
    }

    cadaSegundo(mensaje);
