#!/bin/bash
echo "Bienvenido a los Abarrotes Doña Lupe, $nombre el producto que elegiste es $producto y compraras la cantidad de $cantidad"
sleep 2
if [ "$producto" = "Soda 600ml \$16" ]
then
    echo "La cantidad a pagar es:"
    echo "\$"$(expr $cantidad * 16)
else
	if [ "$producto" = "Doritos Nachos \$12" ]
    then
    	echo "La cantidad a pagar es:"
    	echo "\$"$(expr $cantidad * 12)
    else
    	if [ "$producto" = "Agua 1L \$10" ]
    	then
    		echo "La cantidad a pagar es:"
    		echo "\$"$(expr $cantidad * 10)
    	else
        	if [ "$producto" = "Sincronizada \$20" ]
    		then
    			echo "La cantidad a pagar es:"
    			echo "\$"$(expr $cantidad * 20)
            fi
    	fi
    fi
fi
echo "Registrando venta..."
sleep 8
echo "Gracias por tu compra!"
