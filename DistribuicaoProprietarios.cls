public class DistribuicaoProprietarios {

    public static void distribuirContas() {
        List<User> administradores = [SELECT Id, Name FROM User WHERE IsActive = true AND Profile.Name = 'Administrador do sistema'];
        List<Account> contasAntes = [SELECT Id, OwnerId, Owner.Name FROM Account LIMIT 5];

        Integer contador = 0;

        for (Account conta : contasAntes) {
            Id proprietarioAntes = conta.OwnerId;
            String nomeProprietarioAntes = conta.Owner != null ? conta.Owner.Name : 'Nenhum Proprietário';

            System.debug('Conta Antes - ID: ' + conta.Id + ', Proprietário Antes: ' + nomeProprietarioAntes);

            Id novoProprietario = administradores[contador].Id;

            conta.OwnerId = novoProprietario;
            update conta;

            String nomeNovoProprietario = administradores[contador].Name;

            System.debug('Conta Atualizada - ID: ' + conta.Id + ', Novo Proprietário: ' + nomeNovoProprietario);

            contador++;
            if (contador >= administradores.size()) {
                contador = 0;
            }
        }
    }
}
