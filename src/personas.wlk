import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	method cantidadDeFaltas() { return cantidadDeFaltas }
	
	// faltan los métodos para poder cambiar la categoria, el bono por presentismo,
	// el bono por resultados y la cantidad de faltas de Pepe. 
	
	method sueldoNeto() { return categoria.neto() }
	method sueldo() {
		return self.sueldoNeto() +  self.bonoResultado().monto(self) + self.bonoPresentismo().monto(self)
			/* + el bono por presentismo */
			/* + el bono por resultado */
		
		/* notar que todos los bonos entienden el mensaje monto(empleado)
		 * en este caso ¿quién es el empleado?
		 */ 
	}
	
	method setCategoria(unaCategoria){
		categoria = unaCategoria
	}
	method setBonoResultado(unBono){
		bonoResultado = unBono
	}
	method setBonoPresentismo(unBono){
		bonoPresentismo = unBono
	}
	method setCantidadDeFaltas(cantFaltas){
		cantidadDeFaltas = cantFaltas
	}
	
	method categoria(){
		return categoria
	}
	method bonoResultado() {
		return bonoResultado
	}
	method bonoPresentismo() {
		return bonoPresentismo
	}
}

object sofia{
	var bonoResultado
	var categoria
	
	method sueldoNeto(){
		return self.categoria().neto() * 1.3
	}
	method sueldo(){
		return self.sueldoNeto() + self.bonoResultado().monto(self)
	}
	
	method setCategoria(unaCategoria){
		categoria = unaCategoria
	}
	method setBonoResultado(unBono){
		bonoResultado = unBono
	}
	
	method categoria(){
		return categoria
	}
	method bonoResultado() {
		return bonoResultado
	}
	
}


object roque{
	var bonoResultado
	var cantidadFaltas
	method sueldoNeto(){
		return 28000
	}
	method sueldo(){
		return self.sueldoNeto() + self.bonoResultado().monto(self) + 9000
	}
	
	method setBonoResultado(unBono){
		bonoResultado = unBono
	}
	method bonoResultado() {
		return bonoResultado
	}
	
	method cantidadDeFaltas() { return cantidadFaltas }
	
	method setCantidadDeFaltas(cantFaltas){
		cantidadFaltas = cantFaltas
	}
}

object ernesto{
	var companero
	var bonoPresentismo
	var cantidadFaltas = 0
	method sueldoNeto(){
		return companero.sueldoNeto()
	}
	method sueldo(){
		return self.sueldoNeto() + self.bonoPresentismo().monto(self)
	}
	
	method companero(unCompanero){
		companero = unCompanero
	}
	method companero(){
		return companero
	}
	
	method bonoPresentismo() {
		return bonoPresentismo
	}
	
	method setBonoPresentismo(unBono){
		bonoPresentismo = unBono
	}
	method cantidadDeFaltas() { return cantidadFaltas }
	
	method setCantidadDeFaltas(cantFaltas){
		cantidadFaltas = cantFaltas
	}
}