SELECT A.* FROM 
	CLI.ANOTACAO A,
	CLI.PESSOACOMPARTILHAMENTO PC,
	CLI.PESSOA p
WHERE A.IDPESSOACOMPARTILHAMENTO  = PC.IDPESSOACOMPARTILHAMENTO 
AND PC.IDPESSOA  = P.IDPESSOA 
AND P.NUMCPFCNPJ = '14880127256'
AND A.IDTIPOBAIXA IS NULL; 