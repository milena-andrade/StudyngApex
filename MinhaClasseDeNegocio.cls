public class MinhaClasseDeNegocio {
    
    // Método para calcular a soma de elementos em um array de inteiros
  	public static Integer calcularSoma(Integer[] arra) {
        Integer soma = 0;
        for (Integer elemento : arra) {
            soma += elemento;
        }
        system.debug(soma);
        return soma;
    }
    
// Método para encontrar o elemento mínimo em um array de inteiros
public static Integer encontrarMinimo(Integer[] matriz) {
    if (matriz.isEmpty()) {
        return null; // Tratar o caso em que o array está vazio
    }

    Integer minimo = matriz[0]; // Começar com o primeiro elemento como mínimo

    for (Integer elemento : matriz) {
        if (elemento < minimo) {
            minimo = elemento;
        }
    }
    system.debug(minimo);
    return minimo;
}

}
