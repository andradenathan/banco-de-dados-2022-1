BEGIN 
	DECLARE qtd_estq INTEGER;
	DECLARE qtd_max INTEGER;

	SELECT Quant_Estoque INTO qtd_estq FROM Produto	WHERE ID_Produto = NEW.ID_Produto;
	SELECT Quant_Max_Venda INTO qtd_max FROM Produto WHERE ID_Produto = NEW.ID_Produto;


	IF qtd_estq < 0 AND qtd_estq < qtd_max THEN
		SIGNAL SQLSTATE '45000' SET message_text = 'Nao foi possivel concluir a venda, produto sem estoque';
	END IF;

	UPDATE Produto SET Quant_Estoque = Quant_Estoque - NEW.Quant
	WHERE ID_Produto = NEW.ID_Produto;
END