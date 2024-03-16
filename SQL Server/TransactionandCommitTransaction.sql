--SELECT * FROM BankKart

BEGIN TRANSACTION
    UPDATE BankKart SET Bakiye = Bakiye - 50 WHERE OgrenciNO = 257
    UPDATE BankKart SET Bakiye = Bakiye + 50 WHERE OgrenciNO = 389
COMMIT TRANSACTION