SELECT
	DATADESTINO,
	DATAOPCAO,
	NUMSEQLANC,
	DESCCHAVELANCAMENTO,
	R.*
FROM
	RAT.DESTINORATEIO R
WHERE
	IDINSTITUICAO = 29
	AND DATACALCULO = '2022-11-07';
	--AND IDCONTACAPITAL = 11893;




select * from cca.contacapital where idinstituicao=29 and IDCONTACAPITAL  in(11893);


select * from rat.RATEIOAPROVAFLUXO;



SELECT * FROM rat.SITUACAOESTORNORATEIO s;

SELECT * FROM RAT.TIPODESTINORATEIO t;

/*
1	DESTINAÇÃO RATEIO CALCULADO
2	DESTINAÇÃO RATEIO INDIVIDUAL
3	DESTINAÇÃO RATEIO EM LOTE
4	DESTINAÇÃO RATEIO CONTROLADO POR OPERAÇÃO
5	DESTINAÇÃO RATEIO PENDENTES
18	ESTORNO PARCIAL DO RATEIO
*/

SELECT 

SELECT * FROM RAT.DESTINORATEIO d ;
