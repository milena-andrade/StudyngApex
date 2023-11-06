public class MinhaClasseConstantes {

    // Constantes para o status de um pedido
    public static final String STATUS_ABERTO = 'Aberto';
    public static final String STATUS_PROCESSANDO = 'Em Processamento';
    public static final String STATUS_CONCLUIDO = 'Concluído';

    // Constantes para o tipo de conta
    public static final String TIPO_CONTA_CLIENTE = 'Cliente';
    public static final String TIPO_CONTA_FORNECEDOR = 'Fornecedor';

    // Constante para a taxa de imposto
    public static final Decimal TAXA_IMPOSTO = 0.08;

    // Método para calcular o valor do imposto com base em uma quantia
    public static Decimal calcularImposto(Decimal valor) {
        system.debug(valor * TAXA_IMPOSTO);
        return valor * TAXA_IMPOSTO;
       
    }
}
