# # Funciones

# def calculo_iva(valor_bruto)
# 	return valor_bruto* 1.19
# end

# def imprimir_arreglo(v)
# 	v.each do |item|
# 		puts "Estoy imprimiendo el item #{item}"
# 	end
# end

# puts "El calculo del iva es #{calculo_iva(10000)}"

# arreglo1 = [1, 2, 3, 4, 5]
# arreglo2 = ["roberto", "jose", "ricardo", "raul"]
# arreglo3 = [true, false, true, false]
# arreglo4 = [{nombre: "roberto"}, {nombre: "camilo"}, {nombre: "carol"}]

# imprimir_arreglo(arreglo1)
# imprimir_arreglo(arreglo2)
# imprimir_arreglo(arreglo3)
# imprimir_arreglo(arreglo4)

clientes =[
	{nombre: "Roberto", numero_de_productos: 30},
	{nombre: "Ricardo", numero_de_productos: 3},
	{nombre: "manuel", numero_de_productos: 10},
	{nombre: "javier", numero_de_productos: 60},
	{nombre: "carol", numero_de_productos: 40}	
]


def mayor_numero_de_productos(clientes)
	max = clientes[0]
	clientes.each do |item|
		if item[:numero_de_productos] > max[:numero_de_productos]
			max = item
		end
	end
	max
end

def acumulador(clientes)
	sum = 0
	clientes.each do |cliente| 
		sum = sum + cliente[:numero_de_productos]
	end
	sum
end

def promedio(clientes)
	suma = acumulador(clientes)
	total_clientes = clientes.size
	promedio = suma / total_clientes
	promedio
end

def promedio2(clientes)
	acumulador(clientes) / clientes.size
end

def promedio3(clientes)
	clientes.sum{|cliente|cliente[:numero_de_productos]} / clientes.size
end
