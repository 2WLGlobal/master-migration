--SELECT LOCATION FROM SECPDTA.SEC_GRP
--WHERE MENU_NAME = 'ACCESSORY_MASTER'

UPDATE SECPDTA.SEC_GRP
SET LOCATION = REPLACE(LOCATION, 'screenid=MasterData', 'screenid=MasterJSData')
WHERE MENU_NAME = 'DEALER_CODE'

SELECT * FROM SECPDTA.B2B_CDTY WHERE  CODE_TYPE = 'DLR_CDE'

UPDATE SECPDTA.B2B_CDTY
SET KEY_COLUMNS = LOWER(KEY_COLUMNS)
WHERE CODE_TYPE = 'DLR_CDE'


SELECT * FROM SECPDTA.B2B_MTDT WHERE CODE_TYPE='DLR_CDE'

UPDATE SECPDTA.B2B_MTDT
SET FIELD = LOWER(FIELD),
LOV_FILTER_COLUMN = LOWER(LOV_FILTER_COLUMN),
LOV_RETURN_COLUMN = LOWER(LOV_RETURN_COLUMN)
WHERE CODE_TYPE = 'DLR_CDE'
