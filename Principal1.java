package controlador;

import modelo.Mensaje;
import vista.InterpretadorVista;

public class Principal1 {
	
	Mensaje msjLogica;
	InterpretadorVista msjVista;
	Coordinador msjCoordinador;

	public static void main(String[] args) {
		Principal1 miPrincipal=new Principal1();
		miPrincipal.iniciar();
	}

	/**
	 * Permite instanciar todas las clases con las que trabaja
	 * el sistema
	 */
	/*private void iniciar() {
		/*Se instancian las clases*/
		msjLogica =new Mensaje();
		msjVista=new InterpretadorVista();
		msjCoordinador= new Coordinador();
		
		/*Se establecen las relaciones entre clases*/
		miVentanaPrincipal.setCoordinador(miCoordinador);
		miVentanaRegistro.setCoordinador(miCoordinador);
		miVentanaBuscar.setCoordinador(miCoordinador);
		miLogica.setCoordinador(miCoordinador);
		
		/*Se establecen relaciones con la clase coordinador*/
		miCoordinador.setMiVentanaPrincipal(miVentanaPrincipal);
		miCoordinador.setMiVentanaRegistro(miVentanaRegistro);
		miCoordinador.setMiVentanaBuscar(miVentanaBuscar);
		miCoordinador.setMiLogica(miLogica);
				
		miVentanaPrincipal.setVisible(true);
	}*/

}
