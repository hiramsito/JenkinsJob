#!/bin/bash
echo "Bienvenido a los Abarrotes Doña Lupe, $nombre el producto que elegiste es $producto y compraras la cantidad de $cantidad"
sleep 2
if []
fi
if [ "$producto" = "Soda 600ml \$16" ]
then
    echo "La cantidad a pagar es:"
    let multiplicacion=$cantidad*16
    echo "\$" $multiplicacion
else
	if [ "$producto" = "Doritos Nachos \$12" ]
    then
    	echo "La cantidad a pagar es:"
    	let multiplicacion=$cantidad*12
        echo "\$" $multiplicacion
    else
    	if [ "$producto" = "Agua 1L \$10" ]
    	then
    		echo "La cantidad a pagar es:"
    		let multiplicacion=$cantidad*10
                echo "\$" $multiplicacion
    	else
        	if [ "$producto" = "Sincronizada \$20" ]
    		then
    			echo "La cantidad a pagar es:"
    			let multiplicacion=$cantidad*20
    			echo "\$" $multiplicacion
            fi
    	fi
    fi
fi
echo "Registrando venta..."
sleep 3
echo "Gracias por tu compra!"
