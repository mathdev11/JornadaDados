create table tbVendas_Final (
CodCliente	int , 
Categoria	varchar(50), 
SubCategoria varchar(50), 
Produto		varchar(50), 
Ano			int, 
Mes			int, 
Cidade		varchar(50), 
Valor		float, 
Volume		float)

select * from tbVendas_Final

truncate table tbVendas_Final

BULK INSERT tbVendas_Final
    FROM'C:\Users\Maur�cio\Desktop\matheus\projetos\Imersao Dados\outPut\Aula 3\Dados para SQL\vendas.csv'
    WITH
    (
    FIRSTROW = 2,
    FIELDTERMINATOR =',',  
	ROWTERMINATOR ='0x0a'
    )

select * from tbVendas_Final

truncate table tbPotencial_Final

create table tbPotencial_Final (
CodCliente				int, 
Ano						int, 
Area_Comercial			float, 
Area_Hibrida			float, 
Area_Residencial		float, 
Area_Industrial			float, 
ValorPotencial			float
)

BULK INSERT tbPotencial_Final
    FROM'C:\Users\Maur�cio\Desktop\matheus\projetos\Imersao Dados\outPut\Aula 3\Dados para SQL\potencial.csv'
    WITH
    (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  
	ROWTERMINATOR = '0x0a'
    )


select * from tbPotencial_Final

CREATE INDEX potencialtb ON tbVendas_Final (CodCliente);
CREATE INDEX vendastb ON tbPotencial_Final (CodCliente);

