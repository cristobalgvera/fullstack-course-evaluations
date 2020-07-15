package prueba2;

public class Televisi�n extends Electrodom�stico {
	private double resoluci�n;
	private boolean sintonizadorTDT;

	// Constructor "vac�o" por defecto
	public Televisi�n() {
		super();
		this.resoluci�n = RESOLUCI�NDEFECTO;
		this.sintonizadorTDT = SINTONIZADORTDTDEFECTO;
	}

	public Televisi�n(double precioBase, double peso) {
		super(precioBase, peso);
		this.resoluci�n = RESOLUCI�NDEFECTO;
		this.sintonizadorTDT = SINTONIZADORTDTDEFECTO;
	}

	public Televisi�n(double precioBase, String color, char consumoEnerg�tico, double peso, double resoluci�n,
			boolean sintonizadorTDT) {
		super(precioBase, color, consumoEnerg�tico, peso);
		this.resoluci�n = resoluci�n;
		this.sintonizadorTDT = sintonizadorTDT;
	}

	public String toString() {
		StringBuilder sb = new StringBuilder(); // Creamos un objeto para un orden mayor
		sb.append("TELEVISI�N\n");
		sb.append("\nPrecio base:        \t" + getPrecioBase() + " �");
		sb.append("\nColor:              \t" + getColor());
		sb.append("\nConsumo energ�tico: \t" + getConsumoEnerg�tico());
		sb.append("\nPeso:               \t" + getPeso() + " kg");
		sb.append("\nResoluci�n:         \t" + getResoluci�n() + " in");
		sb.append("\nSintonizador TDT:   \t" + validadorSintonizadorTDT(isSintonizadorTDT()));
		sb.append("\nPrecio final:       \t" + Math.round(precioFinal() * 100d) / 100d + " �");
		return sb.toString();
	}

	double precioFinal() {
		double precioFinal = precioFinalElectrodom�stico(); // Asignamos el valor que entrega el m�todo de la clase
															// padre para luego sumar el valor adherido por la clase
															// hija
		if (isSintonizadorTDT())
			precioFinal += 50;
		if (getResoluci�n() > 40)
			precioFinal *= 1.3;
		return precioFinal;
	}

	String validadorSintonizadorTDT(boolean sintonizadorTDT) { // Este m�todo s�lo es �til para entregar una respuesta
																// coherente para el usuario en el m�todo toString(), en
																// espec�fico, evitar mostrar "true" o "false", y cambio
																// ello por "S�" o "NO", respectivamente
		if (sintonizadorTDT) {
			return "S�";
		} else {
			return "NO";
		}
	}

	public double getResoluci�n() {
		return resoluci�n;
	}

	public boolean isSintonizadorTDT() {
		return sintonizadorTDT;
	}
}
