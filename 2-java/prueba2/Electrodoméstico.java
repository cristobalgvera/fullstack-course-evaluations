package prueba2;

public class Electrodom�stico implements Caracter�sticasDefecto {
	protected String color;
	protected char consumoEnerg�tico;
	protected double peso, precioBase;;

	// Creamos un arreglo de caracteres e incluimos los consumos disponibles para
	// seleccionar
	public static char[] arrayConsumoEnerg�tico = new char[6];
	{
		arrayConsumoEnerg�tico[0] = 'A';
		arrayConsumoEnerg�tico[1] = 'B';
		arrayConsumoEnerg�tico[2] = 'C';
		arrayConsumoEnerg�tico[3] = 'D';
		arrayConsumoEnerg�tico[4] = 'E';
		arrayConsumoEnerg�tico[5] = 'F';
	}

	// Creamos y llenamos un arreglo de colores disponibles para seleccionar
	public static String[] arrayColores = new String[5];
	{
		arrayColores[0] = "BLANCO";
		arrayColores[1] = "NEGRO";
		arrayColores[2] = "ROJO";
		arrayColores[3] = "AZUL";
		arrayColores[4] = "GRIS";
	}

	public Electrodom�stico(double precioBase, String color, char consumoEnerg�tico, double peso) {
		this.precioBase = precioBase;
		this.color = comprobarColor(color); // Evitamos que sea ingresado un color incorrecto
		this.consumoEnerg�tico = comprobarConsumoEnerg�tico(consumoEnerg�tico); // Evitamos que sea ingresado un consumo
																				// incorrecto
		this.peso = peso;
	}

	// Constructor "vac�o" por defecto
	public Electrodom�stico() {
		this.precioBase = PRECIOBASEDEFECTO;
		this.color = COLORDEFECTO;
		this.consumoEnerg�tico = CONSUMOENERG�TICODEFECTO;
		this.peso = PESODEFECTO;
	}

	public Electrodom�stico(double precioBase, double peso) {
		this.precioBase = precioBase;
		this.color = COLORDEFECTO;
		this.consumoEnerg�tico = CONSUMOENERG�TICODEFECTO;
		this.peso = peso;
	}

	public String toString() {
		StringBuilder builder = new StringBuilder(); // Creamos un objeto para un orden mayor
		builder.append("ELECTRODOM�STICO\n");
		builder.append("\nPrecio base:        \t" + getPrecioBase() + " �");
		builder.append("\nColor:              \t" + getColor());
		builder.append("\nConsumo energ�tico: \t" + getConsumoEnerg�tico());
		builder.append("\nPeso:               \t" + getPeso() + " kg");
		builder.append("\nPrecio final:       \t" + precioFinalElectrodom�stico() + " �");
		return builder.toString();
	}

	double precioFinalElectrodom�stico() { // Este nombre para el m�todo precioFinal() es exclusivo de la clase
											// Electrodom�stico. En otras clases simplemente es llamado precioFinal()
		double precioFinal = getPrecioBase(); // Creamos una variable que asigne el valor final recopilado en este
												// m�todo

		// Arreglo de precios acorde al consumo. Tiene directa relaci�n con el arreglo
		// arrayConsumoEnerg�tico[]
		double[] costoConsumo = new double[6];
		{
			costoConsumo[0] = 100;
			costoConsumo[1] = 80;
			costoConsumo[2] = 60;
			costoConsumo[3] = 50;
			costoConsumo[4] = 30;
			costoConsumo[5] = 10;
		}

		// Arreglo de precios acorde al peso del electrodom�stico. Su utilidad no se ve
		// reflejada directamente en este c�digo
		double[] costoPeso = new double[4];
		{
			costoPeso[0] = 10;
			costoPeso[1] = 50;
			costoPeso[2] = 80;
			costoPeso[3] = 100;
		}

		for (int i = 0; i < arrayConsumoEnerg�tico.length; i++) {
			// Comparamos el caracter ingresado con los alojados en nuestro arreglo, es
			// decir, con los �nicos posibles. Si es correcto, es asignado el precio
			// correspondiente al arreglo antiormente mencionado
			if (Character.toUpperCase(getConsumoEnerg�tico()) == arrayConsumoEnerg�tico[i]) {
				precioFinal += costoConsumo[i];
				break;
			}
		}

		// Comparamos el peso del electrodom�stico y le asignamos su costo extra
		// correspondiente
		if (getPeso() < 20) {
			precioFinal += costoPeso[0];
		} else if (getPeso() >= 20 && getPeso() < 50) {
			precioFinal += costoPeso[1];
		} else if (getPeso() >= 50 && getPeso() < 80) {
			precioFinal += costoPeso[2];
		} else {
			precioFinal += costoPeso[3];
		}

		return precioFinal;
	}

	String comprobarColor(String color) {
		boolean colorCorrecto = false;
		try {
			for (int i = 0; i < arrayColores.length; i++) {
				// Comparamos el color ingresado con nuestra lista de colores disponibles, si
				// este se encuentra, el color es asignado al objeto, de otro modo, el valor
				// asignado es el por defecto
				if (color.equalsIgnoreCase(arrayColores[i])) {
					colorCorrecto = true;
					break;
				}
			}
			if (!colorCorrecto) {
				return COLORDEFECTO;
			} else {
				return color.toUpperCase(); // Siempre devolvemos valores en may�sculas
			}
		} catch (Exception e) { // En caso que el valor ingresado no sea v�lido para el m�todo
			return COLORDEFECTO;
		}
	}

	char comprobarConsumoEnerg�tico(char consumoEnerg�tico) {
		boolean consumoCorrecto = false;
		try {
			for (int i = 0; i < arrayConsumoEnerg�tico.length; i++) {
				// Comparamos el consumo ingresado con nuestra lista de consumos disponibles, si
				// este se encuentra, el consumo es asignado al objeto, de otro modo, el valor
				// asignado es el por defecto
				if (Character.toUpperCase(consumoEnerg�tico) == arrayConsumoEnerg�tico[i]) {
					consumoCorrecto = true;
					break;
				}
			}
			if (!consumoCorrecto) {
				return CONSUMOENERG�TICODEFECTO;
			} else {
				return Character.toUpperCase(consumoEnerg�tico); // Siempre devolvemos valores en may�sculas
			}
		} catch (Exception e) { // En caso que el valor ingresado no sea v�lido para el m�todo
			return CONSUMOENERG�TICODEFECTO;
		}
	}

	public double getPrecioBase() {
		return precioBase;
	}

	public String getColor() {
		return color;
	}

	public char getConsumoEnerg�tico() {
		return consumoEnerg�tico;
	}

	public double getPeso() {
		return peso;
	}

}
