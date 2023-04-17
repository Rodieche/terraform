resource "local_file" "productos" {
    count       = 5                                                                # Indica la cantidad de recursos a crear
    content     = "Lista de Productos para el mes proximo"  
    filename    = "productos-${random_string.sufijo[count.index].id}.txt"                       # Con ${random_string.sufijo.id} se llama al recurso inicializado mas abajo \ con count.index llama a cada uno de los sufijos de random
}

