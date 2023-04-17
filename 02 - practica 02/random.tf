resource "random_string" "sufijo" {
    count       = 5                                                         # Indica la cantidad de recursos que debe crear
    length      = 4
    special     = false
    numeric      = false
    upper       = false
//  override_special = "/@$"                                                # Esta linea carece de sentido si special es igual a false
}