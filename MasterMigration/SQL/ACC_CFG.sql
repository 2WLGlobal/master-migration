UPDATE SECPDTA.SEC_GRP
SET LOCATION = REPLACE(LOCATION, 'screenid=MasterData', 'screenid=MasterJSData')
WHERE MENU_NAME = 'ACC_CFG';

UPDATE SECPDTA.B2B_CDTY
SET KEY_COLUMNS = LOWER(KEY_COLUMNS)
WHERE CODE_TYPE = 'ACC_CFG';


--

select * from SECPDTA.B2B_CDTY

WHERE CODE_TYPE = 'ACC_CFG';

--

UPDATE SECPDTA.B2B_MTDT
SET FIELD = LOWER(FIELD),
LOV_FILTER_COLUMN = LOWER(LOV_FILTER_COLUMN),
LOV_RETURN_COLUMN = LOWER(LOV_RETURN_COLUMN)
WHERE CODE_TYPE = 'ACC_CFG';

/*
UPDATE SECPDTA.B2B_MTDT
SET FIELD = REPLACE(LOWER(FIELD), 'tp_code', 'tpCode'),
LOV_FILTER_COLUMN = REPLACE(LOWER(LOV_FILTER_COLUMN), 'tp_code', 'tpCode'),
LOV_RETURN_COLUMN = REPLACE(LOWER(LOV_RETURN_COLUMN), 'tp_code', 'tpCode')
WHERE CODE_TYPE = 'ACC_CFG';
*/

UPDATE SECPDTA.B2B_CDTY
SET KEY_COLUMNS = REPLACE(LOWER(KEY_COLUMNS), 'tp_code', 'tpCode')
WHERE CODE_TYPE = 'ACC_CFG';