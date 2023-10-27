List<Account> contasSelect = [SELECT Id,Name,Phone FROM Account LIMIT 4];

Map<Id, Account> contas = new Map<Id, Account>(contasSelect);

system.debug(contas);
