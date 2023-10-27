Account conta = new Account();
conta.Name = 'Teste Builders';
insert conta;

ID IdConta = conta.Id;

System.debug('Id da conta é ' + Conta);


Account contaAtt = [SELECT Id, Phone FROM Account Where Id =: IdConta LIMIT 1];
contaAtt.Phone = '(13) 3463-5603';
update contaAtt;

Account deletarConta = [SELECT Id, Phone FROM Account Where Id =: IdConta LIMIT 1];
delete deletarConta;


Account restaurarConta = [SELECT Id, Phone FROM Account Where Id =: IdConta LIMIT 1 ALL ROWS];
undelete restaurarConta;
