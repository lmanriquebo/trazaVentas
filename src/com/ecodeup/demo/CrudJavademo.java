package com.ecodeup.demo;

import com.ecodeup.controller.ControllerCliente;

import com.ecodeup.model.Cliente;

public class CrudJavademo {
	public static void main(String[] args) {
		 
		Cliente cliente = new Cliente("1717213183", "Elivar", "Largo");			
		
		// controlador
		ControllerCliente controller = new ControllerCliente();
 
		// guarda un cliente a través del controlador
		controller.registrar(cliente);
 
		// ver clientes
		controller.verClientes();
 
		// editar un cliente por medio del id
		cliente.setId(2);
		cliente.setNombre("Santiago");
		controller.actualizar(cliente);
 
		// eliminar un cliente por medio del id
		cliente.setId(3);
		controller.eliminar(cliente);
	}
}
