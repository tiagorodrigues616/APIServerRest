use BDHOMOL_3008;


select * from produto where IDProduto in (2,3,5);

/*
UPDATE 
dbo.Produto SET 
DataUltMovimento = '2022-11-04', 
DataAtualMovimento = '2022-11-07', 
DataProxMovimento = '2022-11-08', 
DataAntProd = '2022-11-04', 
DataProxProd = '2022-11-08', 
DataAtualProd = '2022-11-07'
WHERE IDProduto = 3;
*/

/*
UPDATE 
dbo.Produto SET 
DataUltMovimento = '2023-07-03', 
DataAtualMovimento = '2023-07-04', 
DataProxMovimento = '2023-07-05', 
DataAntProd = '2023-07-03', 
DataProxProd = '2023-07-05', 
DataAtualProd = '2023-07-04'
WHERE IDProduto = 3;
*/

SELECT * FROM DestinoRateio dr WHERE DataCalculo  = '2022-11-07';














select * from rat.ESTORNORATEIO where idinstituicao= 29 and CODSITUACAOESTORNORATEIO=9;


SELECT
	*
FROM
	LancamentosCCapital
WHERE
	DataLote = '2022-11-07'
	AND NumMatricula = 12978
	AND IDTipoHistoricoLanc = 108;
	AND DESCOPERACAOEXTERNA = 'RAT30082023102312';

select * from DBO.LancamentoCCO where NumLoteLanc = 9103 AND IDTipoHistoricoLanc = 500 and DataLote='2022-11-07'  order by DataHoraInclusao desc;









AND IDTipoHistoricoLanc = 672;

SELECT * FROM LancamentoCCO WHERE DataLote  = '2022-11-07'AND IDTipoHistoricoLanc = 672 order by DataHoraInclusao desc;

SELECT * FROM LancamentosCCapital WHERE DataLote  = '2022-11-07' AND IDTipoHistoricoLanc IN(108,208);

SELECT * FROM LancamentoCCO WHERE DataLote  = '2022-11-07' AND IDTipoHistoricoLanc = 672 AND IDUsuarioResp = 'TIAGO.GONCALVES' ORDER BY DataHoraInclusao DESC;

SELECT * FROM LancamentosCCapital WHERE DataLote  = '2022-11-07' AND IDTipoHistoricoLanc IN(108,208) AND IDUsuarioResp = 'TIAGO.GONCALVES' ORDER BY DataHoraInclusao DESC;