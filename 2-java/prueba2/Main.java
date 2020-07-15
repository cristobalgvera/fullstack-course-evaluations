package prueba2;

import java.util.ArrayList;
import java.util.List;

public class Main {
	static List<Electrodom�stico> electrodom�stico = new ArrayList<Electrodom�stico>(); // Creamos un arreglo din�mico
																						// para agregar
																						// electrodom�sticos
																						// independiente de la cantidad
	static double[] preciosFinales = new double[3]; // Arreglo de ayuda para sumar y almacenar los precios finales de
													// cada electrodom�stico

	public static void main(String[] args) {
		llenarArray(20); // El m�todo solicita la cantidad de electrodom�sticos a evaluar
		sumarPrecios();
		mostrarObjetos();
		mostrarPrecios();
	}

	static void llenarArray(int cantidadElectrodom�sticos) { // Con este valor de entrada logramos que el usuario decida
																// la cantidad de electrodom�sticos a evaluar
		// Cada variable es utilizada para entregar valores aleat�reos en los atributos
		// de cada electrodom�stico, esto al momento de crearlos
		int aux, aux2, precioBase;
		String color;
		char consumoEnerg�tico;
		double peso, carga, resoluci�n;
		boolean sintonizadorTDT;

		for (int i = 0; i < cantidadElectrodom�sticos + 1; i++) { // Ciclo de creaci�n de electrodom�sticos
			aux = (int) (Math.random() * 3); // Asigna el tipo de electrodom�stico para cada objeto (Electrodom�stico,
												// Lavadora o Televisi�n; 0, 1 y 2, respectivamente)
			aux2 = (int) (Math.random() * (Electrodom�stico.arrayConsumoEnerg�tico.length));
			consumoEnerg�tico = Electrodom�stico.arrayConsumoEnerg�tico[aux2]; // De acuerdo al n�mero aleat�reo "aux2"
																				// es asignado un valor del arreglo
																				// arrayConsumoEnerg�tico[]
			aux2 = (int) (Math.random() * (Electrodom�stico.arrayColores.length));
			color = Electrodom�stico.arrayColores[aux2]; // De acuerdo al nuevo n�mero aleat�reo "aux2" es asignado un
															// valor del arreglo arrayColores[]
			precioBase = (int) (Math.random() * 40) + 20;
			peso = Math.round((Math.random() * 100) * 100d) / 100d; // Redondeamos el valor del atributo peso del objeto
																	// a m�ximo dos decimales
			switch (aux) { // Utilizamos el valor aleat�reo de la variable "aux" para crear
							// electrodom�sticos
			case 0:
				electrodom�stico.add(new Electrodom�stico(precioBase, color, consumoEnerg�tico, peso));
				break;
			case 1:
				carga = Math.round((Math.random() * 60) * 100d) / 100d; // Redondeamos el valor del atributo carga del
																		// objeto a m�ximo dos decimales
				electrodom�stico.add(new Lavadora(precioBase, color, consumoEnerg�tico, peso, carga));
				break;
			default:
				resoluci�n = Math.round((Math.random() * 40 + 20) * 100d) / 100d; // Redondeamos el valor del atributo
																					// resoluci�n del objeto a m�ximo
																					// dos decimales
				sintonizadorTDT = (Math.random() > 0.5); // Variable booleana asignada de manera aleat�rea de acuerdo a
															// la funci�n Math.random()
				electrodom�stico
						.add(new Televisi�n(precioBase, color, consumoEnerg�tico, peso, resoluci�n, sintonizadorTDT));
				break;
			}
		}
		electrodom�stico.remove(0); // Removemos el primer objeto del ArrayList debido a un fallo que no pudo ser
									// solucionado. ERROR: Los atributos color y consumoEnerg�tico quedan nulos para
									// el primer objeto. Esta soluci�n es poco elegante pero �til
	}

	static void sumarPrecios() {
		for (int i = 0; i < electrodom�stico.size(); i++) {
			// Separamos cada objeto de acuerdo a su clase gracias al operador instanceof y
			// asignamos el valor del precio final de cada objeto al arreglo
			// preciosFinales[]
			if (electrodom�stico.get(i) instanceof Electrodom�stico) {
				preciosFinales[0] += electrodom�stico.get(i).precioFinalElectrodom�stico();
				if (electrodom�stico.get(i) instanceof Televisi�n) {
					preciosFinales[0] += ((Televisi�n) electrodom�stico.get(i)).precioFinal()
							- electrodom�stico.get(i).precioFinalElectrodom�stico(); // Utilizamos esta soluci�n
																						// matem�tica para evitar el uso
																						// excesivo de condicionales if
					preciosFinales[2] += ((Televisi�n) electrodom�stico.get(i)).precioFinal();
				} else if (electrodom�stico.get(i) instanceof Lavadora) {
					preciosFinales[0] += ((Lavadora) electrodom�stico.get(i)).precioFinal()
							- electrodom�stico.get(i).precioFinalElectrodom�stico(); // Utilizamos esta soluci�n
																						// matem�tica para evitar el uso
																						// excesivo de condicionales if
					preciosFinales[1] += ((Lavadora) electrodom�stico.get(i)).precioFinal();
				}
			}
		}
	}

	static void mostrarObjetos() {
		System.out.println("***********************************\nLISTADO DE ELECTRODOM�STICOS");
		System.out.println("***********************************");
		for (int i = 0; i < electrodom�stico.size(); i++) {
			System.out.println("\n" + (i + 1) + ": " + electrodom�stico.get(i)); // Utilizamos el m�todo toString() de
																					// cada clase para imprimir los
																					// objetos
			System.out.println("\n***********************************");
		}
		System.out.println("***********************************\n");
	}

	static void mostrarPrecios() {
		System.out.println("PRECIOS FINALES POR CATEGOR�A\n");
		for (int i = 0; i < preciosFinales.length; i++) {
			switch (i) {
			case 0:
				System.out.print("ELECTRODOM�STICOS: \t");
				break;
			case 1:
				System.out.print("LAVADORAS:         \t");
				break;
			default:
				System.out.print("TELEVISORES:       \t");
				break;
			}
			System.out.println(Math.round(preciosFinales[i] * 100d) / 100d + " �"); // Redondemos el valor total de cada
																					// electrodom�stico a m�ximo dos
																					// decimales
		}
		System.out.println("\n***********************************");
	}

}
