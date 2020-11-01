package aspectos;

import com.ecodeup.controller.ControllerCliente;
import com.ecodeup.model.Cliente;

public aspect traza {
	Cliente cliente = new Cliente();	
	
	//Identifica el evento de registrar cliente y ejecuta el log
	before(Cliente cliente):
		call(void ControllerCliente.registrar(Cliente)) && args(cliente){
		System.out.println("Se inserto exitosamente el cliente: "+cliente);
	}
	
	//Identifica el evento de actualiza cliente y ejecuta el log
	before(Cliente cliente):
		call(void ControllerCliente.actualizar(Cliente)) && args(cliente){
		System.out.println("Se Actualizó exitosamente el cliente: "+cliente);
	}
	
	//Identifica el evento de elimina cliente y ejecuta el log
	before(Cliente cliente):
		call(void ControllerCliente.eliminar(Cliente)) && args(cliente){
		System.out.println("Se eliminó exitosamente el cliente: "+cliente);
	}
	
	//Identifica el evento de muestra los clientes y ejecuta el log
	before():
		call(void ControllerCliente.verClientes()){
		System.out.println("Se mostraron exitosamente los clientes registrados.");
	}
}