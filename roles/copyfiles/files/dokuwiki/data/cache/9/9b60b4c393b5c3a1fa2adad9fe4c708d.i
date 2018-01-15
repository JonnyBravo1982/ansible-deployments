a:32:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"Value überschreiben Beispiel ";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:31;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:31;}i:5;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:3:"sql";i:2;s:0:"";i:3;s:73:"
update CMPG_CUSTOMPMSETTINGSRD
set		Prima = 'Standard'
where	Prima = 30
";}i:2;i:3;i:3;s:78:" sql>
update CMPG_CUSTOMPMSETTINGSRD
set		Prima = 'Standard'
where	Prima = 30
";}i:2;i:38;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:123;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:123;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"Diese ";}i:2;i:126;}i:9;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:132;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"Procedure";}i:2;i:133;}i:11;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:142;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:" durchsucht alle Tables nach einem String.  ";}i:2;i:143;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:187;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:187;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"Procedure : 
";}i:2;i:189;}i:16;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:3:"sql";i:2;s:0:"";i:3;s:6184:"
IF OBJECT_ID('SP_SearchTables','P') IS NOT NULL
	DROP PROCEDURE SP_SearchTables
GO
CREATE PROCEDURE SP_SearchTables
 @Tablenames VARCHAR(500)
,@SearchStr NVARCHAR(60)
,@GenerateSQLOnly Bit = 0
AS

/*
	Parameters and usage

	@Tablenames		-- Provide a single table name or multiple table name with comma seperated. 
						If left blank , it will check for all the tables in the database
						Provide wild card tables names with comma seperated
						EX :'%tbl%,Dim%' -- This will search the table having names comtains "tbl" and starts with "Dim"
							
	@SearchStr		-- Provide the search string. Use the '%' to coin the search. Also can provide multiple search with comma seperated
						EX : X%--- will give data staring with X
							 %X--- will give data ending with X
							 %X%--- will give data containig  X
							 %X%,Y%--- will give data containig  X or starting with Y
							 %X%,%,,% -- Use a double comma to search comma in the data
	@GenerateSQLOnly -- Provide 1 if you only want to generate the SQL statements without seraching the database. 
						By default it is 0 and it will search.

	Samples :

	1. To search data in a table

		EXEC SP_SearchTables @Tablenames = 'T1'
						 ,@SearchStr  = '%TEST%'

		The above sample searches in table T1 with string containing TEST.

	2. To search in a multiple table

		EXEC SP_SearchTables @Tablenames = 'T2'
						 ,@SearchStr  = '%TEST%'

		The above sample searches in tables T1 & T2 with string containing TEST.
	
	3. To search in a all table

		EXEC SP_SearchTables @Tablenames = '%'
						 ,@SearchStr  = '%TEST%'

		The above sample searches in all table with string containing TEST.

	4. Generate the SQL for the Select statements

		EXEC SP_SearchTables @Tablenames		= 'T1'
						 ,@SearchStr		= '%TEST%'
						 ,@GenerateSQLOnly	= 1

	5. To Search in tables with specfic name

		EXEC SP_SearchTables @Tablenames		= '%T1%'
						 ,@SearchStr		= '%TEST%'
						 ,@GenerateSQLOnly	= 0

	6. To Search in multiple tables with specfic names

		EXEC SP_SearchTables @Tablenames		= '%T1%,Dim%'
						 ,@SearchStr		= '%TEST%'
						 ,@GenerateSQLOnly	= 0
	
	7. To specify multiple search strings

		EXEC SP_SearchTables @Tablenames		= '%T1%,Dim%'
						 ,@SearchStr		= '%TEST%,TEST1%,%TEST2'
						 ,@GenerateSQLOnly	= 0


	8. To search comma itself in the tables use double comma ",,"

		EXEC SP_SearchTables @Tablenames		= '%T1%,Dim%'
						 ,@SearchStr		= '%,,%'
						 ,@GenerateSQLOnly	= 0

		EXEC SP_SearchTables @Tablenames		= '%T1%,Dim%'
						 ,@SearchStr		= '%with,,comma%'
						 ,@GenerateSQLOnly	= 0
*/

	SET NOCOUNT ON

	DECLARE @MatchFound BIT

	SELECT @MatchFound = 0

	DECLARE @CheckTableNames Table
	(
	Tablename sysname
	)

	DECLARE @SearchStringTbl TABLE
	(
	SearchString VARCHAR(500)
	)

	DECLARE @SQLTbl TABLE
	(
	 Tablename		SYSNAME
	,WHEREClause    VARCHAR(MAX)
	,SQLStatement   VARCHAR(MAX)
	,Execstatus		BIT 
	)

	DECLARE @SQL VARCHAR(MAX)
	DECLARE @TblSQL VARCHAR(MAX)
	DECLARE @tmpTblname sysname
	DECLARE @ErrMsg VARCHAR(100)

	IF LTRIM(RTRIM(@Tablenames)) IN ('' ,'%')
	BEGIN

		INSERT INTO @CheckTableNames
		SELECT Name
		  FROM sys.tables
	END
	ELSE
	BEGIN

		IF CHARINDEX(',',@Tablenames) > 0 
			SELECT @SQL = 'SELECT ''' + REPLACE(@Tablenames,',','''as TblName UNION SELECT ''') + ''''
		ELSE
			SELECT @SQL = 'SELECT ''' + @Tablenames + ''' as TblName '

		SELECT @TblSQL = 'SELECT T.NAME
							FROM SYS.TABLES T
							JOIN (' + @SQL + ') tblsrc
							 ON T.name LIKE tblsrc.tblname '


		

		INSERT INTO @CheckTableNames
		EXEC(@TblSQL)

	END
	
	IF NOT EXISTS(SELECT 1 FROM @CheckTableNames)
	BEGIN
		
		SELECT @ErrMsg = 'No tables are found in this database ' + DB_NAME() + ' for the specified filter'
		PRINT @ErrMsg
		RETURN

	END


	IF LTRIM(RTRIM(@SearchStr)) =''
	BEGIN

		SELECT @ErrMsg = 'Please specify the search string in @SearchStr Parameter'
		PRINT @ErrMsg
		RETURN
	END
	ELSE
	BEGIN 
		SELECT @SearchStr = REPLACE(@SearchStr,',,,',',#DOUBLECOMMA#')
		SELECT @SearchStr = REPLACE(@SearchStr,',,','#DOUBLECOMMA#')

		SELECT @SQL = 'SELECT ''' + REPLACE(@SearchStr,',','''as SearchString UNION SELECT ''') + ''''

		INSERT INTO @SearchStringTbl
		(SearchString)
		EXEC(@SQL)

		UPDATE @SearchStringTbl
		   SET SearchString = REPLACE(SearchString ,'#DOUBLECOMMA#',',')
	END

	
	
	INSERT INTO @SQLTbl
	( Tablename,WHEREClause)
	SELECT QUOTENAME(SCh.name) + '.' + QUOTENAME(ST.NAME),
			(
				SELECT '[' + SC.Name + ']' + ' LIKE ''' + SearchSTR.SearchString + ''' OR ' + CHAR(10)
				  FROM SYS.columns SC
				  JOIN SYS.types STy
					ON STy.system_type_id = SC.system_type_id
				   AND STy.user_type_id =SC.user_type_id
				  CROSS JOIN @SearchStringTbl SearchSTR
				 WHERE STY.name in ('varchar','char','nvarchar','nchar','text')
				   AND SC.object_id = ST.object_id
				 ORDER BY SC.name
				FOR XML PATH('')
			)
	  FROM  SYS.tables ST
	  JOIN @CheckTableNames chktbls
				ON chktbls.Tablename = ST.name 
	  JOIN SYS.schemas SCh
	    ON ST.schema_id = SCh.schema_id
	 WHERE ST.name <> 'SearchTMP'
      GROUP BY ST.object_id, QUOTENAME(SCh.name) + '.' +  QUOTENAME(ST.NAME) ;
	

	  UPDATE @SQLTbl
		 SET SQLStatement = 'SELECT * INTO SearchTMP FROM ' + Tablename + ' WHERE ' + substring(WHEREClause,1,len(WHEREClause)-5)


		 
	  DELETE FROM @SQLTbl
	   WHERE WHEREClause IS NULL
	
	WHILE EXISTS (SELECT 1 FROM @SQLTbl WHERE ISNULL(Execstatus ,0) = 0)
	BEGIN

		SELECT TOP 1 @tmpTblname = Tablename , @SQL = SQLStatement
		  FROM @SQLTbl 
		 WHERE ISNULL(Execstatus ,0) = 0

		 IF @GenerateSQLOnly = 0
		 BEGIN

			IF OBJECT_ID('SearchTMP','U') IS NOT NULL
				DROP TABLE SearchTMP
				
			EXEC (@SQL)

			IF EXISTS(SELECT 1 FROM SearchTMP)
			BEGIN
				SELECT Tablename=@tmpTblname,* FROM SearchTMP
				SELECT @MatchFound = 1
			END

		 END
		 ELSE
		 BEGIN
			 PRINT REPLICATE('-',100)
			 PRINT @tmpTblname
			 PRINT REPLICATE('-',100)
			 PRINT replace(@SQL,'INTO SearchTMP','')
		 END

		 UPDATE @SQLTbl
		    SET Execstatus = 1
		  WHERE Tablename = @tmpTblname

	END

	IF @MatchFound = 0 
	BEGIN
		SELECT @ErrMsg = 'No Matches are found in this database ' + DB_NAME() + ' for the specified filter'
		PRINT @ErrMsg
		RETURN
	END
	
	SET NOCOUNT OFF

go



";}i:2;i:3;i:3;s:6189:" sql>
IF OBJECT_ID('SP_SearchTables','P') IS NOT NULL
	DROP PROCEDURE SP_SearchTables
GO
CREATE PROCEDURE SP_SearchTables
 @Tablenames VARCHAR(500)
,@SearchStr NVARCHAR(60)
,@GenerateSQLOnly Bit = 0
AS

/*
	Parameters and usage

	@Tablenames		-- Provide a single table name or multiple table name with comma seperated. 
						If left blank , it will check for all the tables in the database
						Provide wild card tables names with comma seperated
						EX :'%tbl%,Dim%' -- This will search the table having names comtains "tbl" and starts with "Dim"
							
	@SearchStr		-- Provide the search string. Use the '%' to coin the search. Also can provide multiple search with comma seperated
						EX : X%--- will give data staring with X
							 %X--- will give data ending with X
							 %X%--- will give data containig  X
							 %X%,Y%--- will give data containig  X or starting with Y
							 %X%,%,,% -- Use a double comma to search comma in the data
	@GenerateSQLOnly -- Provide 1 if you only want to generate the SQL statements without seraching the database. 
						By default it is 0 and it will search.

	Samples :

	1. To search data in a table

		EXEC SP_SearchTables @Tablenames = 'T1'
						 ,@SearchStr  = '%TEST%'

		The above sample searches in table T1 with string containing TEST.

	2. To search in a multiple table

		EXEC SP_SearchTables @Tablenames = 'T2'
						 ,@SearchStr  = '%TEST%'

		The above sample searches in tables T1 & T2 with string containing TEST.
	
	3. To search in a all table

		EXEC SP_SearchTables @Tablenames = '%'
						 ,@SearchStr  = '%TEST%'

		The above sample searches in all table with string containing TEST.

	4. Generate the SQL for the Select statements

		EXEC SP_SearchTables @Tablenames		= 'T1'
						 ,@SearchStr		= '%TEST%'
						 ,@GenerateSQLOnly	= 1

	5. To Search in tables with specfic name

		EXEC SP_SearchTables @Tablenames		= '%T1%'
						 ,@SearchStr		= '%TEST%'
						 ,@GenerateSQLOnly	= 0

	6. To Search in multiple tables with specfic names

		EXEC SP_SearchTables @Tablenames		= '%T1%,Dim%'
						 ,@SearchStr		= '%TEST%'
						 ,@GenerateSQLOnly	= 0
	
	7. To specify multiple search strings

		EXEC SP_SearchTables @Tablenames		= '%T1%,Dim%'
						 ,@SearchStr		= '%TEST%,TEST1%,%TEST2'
						 ,@GenerateSQLOnly	= 0


	8. To search comma itself in the tables use double comma ",,"

		EXEC SP_SearchTables @Tablenames		= '%T1%,Dim%'
						 ,@SearchStr		= '%,,%'
						 ,@GenerateSQLOnly	= 0

		EXEC SP_SearchTables @Tablenames		= '%T1%,Dim%'
						 ,@SearchStr		= '%with,,comma%'
						 ,@GenerateSQLOnly	= 0
*/

	SET NOCOUNT ON

	DECLARE @MatchFound BIT

	SELECT @MatchFound = 0

	DECLARE @CheckTableNames Table
	(
	Tablename sysname
	)

	DECLARE @SearchStringTbl TABLE
	(
	SearchString VARCHAR(500)
	)

	DECLARE @SQLTbl TABLE
	(
	 Tablename		SYSNAME
	,WHEREClause    VARCHAR(MAX)
	,SQLStatement   VARCHAR(MAX)
	,Execstatus		BIT 
	)

	DECLARE @SQL VARCHAR(MAX)
	DECLARE @TblSQL VARCHAR(MAX)
	DECLARE @tmpTblname sysname
	DECLARE @ErrMsg VARCHAR(100)

	IF LTRIM(RTRIM(@Tablenames)) IN ('' ,'%')
	BEGIN

		INSERT INTO @CheckTableNames
		SELECT Name
		  FROM sys.tables
	END
	ELSE
	BEGIN

		IF CHARINDEX(',',@Tablenames) > 0 
			SELECT @SQL = 'SELECT ''' + REPLACE(@Tablenames,',','''as TblName UNION SELECT ''') + ''''
		ELSE
			SELECT @SQL = 'SELECT ''' + @Tablenames + ''' as TblName '

		SELECT @TblSQL = 'SELECT T.NAME
							FROM SYS.TABLES T
							JOIN (' + @SQL + ') tblsrc
							 ON T.name LIKE tblsrc.tblname '


		

		INSERT INTO @CheckTableNames
		EXEC(@TblSQL)

	END
	
	IF NOT EXISTS(SELECT 1 FROM @CheckTableNames)
	BEGIN
		
		SELECT @ErrMsg = 'No tables are found in this database ' + DB_NAME() + ' for the specified filter'
		PRINT @ErrMsg
		RETURN

	END


	IF LTRIM(RTRIM(@SearchStr)) =''
	BEGIN

		SELECT @ErrMsg = 'Please specify the search string in @SearchStr Parameter'
		PRINT @ErrMsg
		RETURN
	END
	ELSE
	BEGIN 
		SELECT @SearchStr = REPLACE(@SearchStr,',,,',',#DOUBLECOMMA#')
		SELECT @SearchStr = REPLACE(@SearchStr,',,','#DOUBLECOMMA#')

		SELECT @SQL = 'SELECT ''' + REPLACE(@SearchStr,',','''as SearchString UNION SELECT ''') + ''''

		INSERT INTO @SearchStringTbl
		(SearchString)
		EXEC(@SQL)

		UPDATE @SearchStringTbl
		   SET SearchString = REPLACE(SearchString ,'#DOUBLECOMMA#',',')
	END

	
	
	INSERT INTO @SQLTbl
	( Tablename,WHEREClause)
	SELECT QUOTENAME(SCh.name) + '.' + QUOTENAME(ST.NAME),
			(
				SELECT '[' + SC.Name + ']' + ' LIKE ''' + SearchSTR.SearchString + ''' OR ' + CHAR(10)
				  FROM SYS.columns SC
				  JOIN SYS.types STy
					ON STy.system_type_id = SC.system_type_id
				   AND STy.user_type_id =SC.user_type_id
				  CROSS JOIN @SearchStringTbl SearchSTR
				 WHERE STY.name in ('varchar','char','nvarchar','nchar','text')
				   AND SC.object_id = ST.object_id
				 ORDER BY SC.name
				FOR XML PATH('')
			)
	  FROM  SYS.tables ST
	  JOIN @CheckTableNames chktbls
				ON chktbls.Tablename = ST.name 
	  JOIN SYS.schemas SCh
	    ON ST.schema_id = SCh.schema_id
	 WHERE ST.name <> 'SearchTMP'
      GROUP BY ST.object_id, QUOTENAME(SCh.name) + '.' +  QUOTENAME(ST.NAME) ;
	

	  UPDATE @SQLTbl
		 SET SQLStatement = 'SELECT * INTO SearchTMP FROM ' + Tablename + ' WHERE ' + substring(WHEREClause,1,len(WHEREClause)-5)


		 
	  DELETE FROM @SQLTbl
	   WHERE WHEREClause IS NULL
	
	WHILE EXISTS (SELECT 1 FROM @SQLTbl WHERE ISNULL(Execstatus ,0) = 0)
	BEGIN

		SELECT TOP 1 @tmpTblname = Tablename , @SQL = SQLStatement
		  FROM @SQLTbl 
		 WHERE ISNULL(Execstatus ,0) = 0

		 IF @GenerateSQLOnly = 0
		 BEGIN

			IF OBJECT_ID('SearchTMP','U') IS NOT NULL
				DROP TABLE SearchTMP
				
			EXEC (@SQL)

			IF EXISTS(SELECT 1 FROM SearchTMP)
			BEGIN
				SELECT Tablename=@tmpTblname,* FROM SearchTMP
				SELECT @MatchFound = 1
			END

		 END
		 ELSE
		 BEGIN
			 PRINT REPLICATE('-',100)
			 PRINT @tmpTblname
			 PRINT REPLICATE('-',100)
			 PRINT replace(@SQL,'INTO SearchTMP','')
		 END

		 UPDATE @SQLTbl
		    SET Execstatus = 1
		  WHERE Tablename = @tmpTblname

	END

	IF @MatchFound = 0 
	BEGIN
		SELECT @ErrMsg = 'No Matches are found in this database ' + DB_NAME() + ' for the specified filter'
		PRINT @ErrMsg
		RETURN
	END
	
	SET NOCOUNT OFF

go



";}i:2;i:207;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6403;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6403;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"Aufruf Beispiel : ";}i:2;i:6405;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6423;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6423;}i:22;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:3:"sql";i:2;s:0:"";i:3;s:75:"
EXEC SP_SearchTables @Tablenames = '%' ,@SearchStr = '%Beispiel_Example%'
";}i:2;i:3;i:3;s:80:" sql>
EXEC SP_SearchTables @Tablenames = '%' ,@SearchStr = '%Beispiel_Example%'
";}i:2;i:6430;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6517;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6517;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"Eine andere Möglichkeit ohne Proc. wäre ";}i:2;i:6519;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6561;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6561;}i:28;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:3:"sql";i:2;s:0:"";i:3;s:7683:"
-- PLEASE DEFINE SEARCH CRITERIA BEFORE RUNNING THIS SCRIPT.
-- Change "Symantec_CMDB" to the database name to use if it is different.
DECLARE @DataToFind NVARCHAR(MAX) = 'Server' -- Change the value of @DataToFind to be what is to be searched for.
DECLARE @DataType NVARCHAR(6) = 'Text' -- Change the value of @DataType to be Text (default), Number, Guid, Date or All.
DECLARE @ExactMatch BIT = 0 -- Change the value of @ExactMatch to be 0 or 1. 0 equals a wildcard match (default), 1 equals an exact match.
DECLARE @CaseSensitive BIT = 0 -- Change the value of @CaseSentitive to be 0 or 1. 0 equals not case sentitive (default), 1 equals case sensitive.
--
DECLARE @Schema TABLE (RowID INT IDENTITY(1,1), STableName NVARCHAR(MAX), SColumnName NVARCHAR(MAX), SDataType NVARCHAR(MAX), DataSize NVARCHAR(100))
DECLARE @Found TABLE(FTableName NVARCHAR(MAX) DEFAULT '', FColumnName NVARCHAR(MAX) DEFAULT '', FDataType NVARCHAR(MAX), Match NVARCHAR(MAX))
DECLARE @LoopNo INT, @TotalRows INT, @SQL NVARCHAR(MAX), @ParamDef NVARCHAR(MAX), @DataExists BIT, @TableFound NVARCHAR(MAX), @ColumnFound NVARCHAR(MAX),
@DataTypeFound NVARCHAR(MAX), @DataTypeSize NVARCHAR(MAX), @DataTypesToUse1 NVARCHAR(16), @DataTypesToUse2 NVARCHAR(16), @DataTypesToUse3 NVARCHAR(16),
@DataTypesToUse4 NVARCHAR(16), @DataTypesToUse5 NVARCHAR(16), @DataTypesToUse6 NVARCHAR(16), @DataTypesToUse7 NVARCHAR(16), @DataTypesToUse8 NVARCHAR(16),
@DataTypesToUse9 NVARCHAR(16), @DataTypesToUse10 NVARCHAR(16), @DataTypesToUse11 NVARCHAR(16), @DataTypesToUse12 NVARCHAR(16), @DataTypesToUse13 NVARCHAR(16),
@DataTypesToUse14 NVARCHAR(16), @DataTypesToUse15 NVARCHAR(16), @DataTypesToUse16 NVARCHAR(16), @DataTypesToUse17 NVARCHAR(16), @DataTypesToUse18 NVARCHAR(16),
@DataTypesToUse19 NVARCHAR(16), @DataTypesToUse20 NVARCHAR(16)
--Note: This script will only search the defined data types as specified by the @DataType variable. For example, if String is the data type, numeric
--data types such as INT will not be searched, however, if the number being searched for exists in an NVARCHAR, the match will be found.
IF @DataType = 'Text'
BEGIN
  SET @DataTypesToUse1 = 'NVARCHAR'
  SET @DataTypesToUse2 = 'VARCHAR'
  SET @DataTypesToUse3 = 'NTEXT'
  SET @DataTypesToUse4 = 'TEXT'
  SET @DataTypesToUse5 = 'NCHAR'
  SET @DataTypesToUse6 = 'CHAR'
  SET @DataTypesToUse7 = ''
  SET @DataTypesToUse8 = ''
  SET @DataTypesToUse9 = ''
  SET @DataTypesToUse10 = ''
END
IF @DataType = 'Guid'
BEGIN
  SET @DataTypesToUse1 = 'UNIQUEIDENTIFIER'
  SET @DataTypesToUse2 = 'NVARCHAR'
  SET @DataTypesToUse3 = ''
  SET @DataTypesToUse4 = ''
  SET @DataTypesToUse5 = ''
  SET @DataTypesToUse6 = ''
  SET @DataTypesToUse7 = ''
  SET @DataTypesToUse8 = ''
  SET @DataTypesToUse9 = ''
  SET @DataTypesToUse10 = ''
END
IF @DataType = 'Number'
BEGIN
  SET @DataTypesToUse1 = 'INT'
  SET @DataTypesToUse2 = 'BIGINT'
  SET @DataTypesToUse3 = 'SMALLINT'
  SET @DataTypesToUse4 = 'TINYINT'
  SET @DataTypesToUse5 = 'FLOAT'
  SET @DataTypesToUse6 = 'REAL'
  SET @DataTypesToUse7 = 'DECIMAL'
  SET @DataTypesToUse8 = 'MONEY'
  SET @DataTypesToUse9 = 'SMALLMONEY'
  SET @DataTypesToUse10 = 'BIT'
END
-- Note: DateTime values are stored as (example) 2011-12-06 07:45:09.257, however, appear as Dec 6 2011  7:45AM.
-- To search for "2011-12-06", specify "Dec  6 2011". Also  note that for single digit days, there is an extra space
-- after the month, as the above example shows.
IF @DataType = 'Date'
BEGIN
  SET @ExactMatch = 0
  SET @DataTypesToUse1 = 'DATETIME'
  SET @DataTypesToUse2 = 'SMALLDATETIME'
  SET @DataTypesToUse3 = 'NVARCHAR'
  SET @DataTypesToUse4 = ''
  SET @DataTypesToUse5 = ''
  SET @DataTypesToUse6 = ''
  SET @DataTypesToUse7 = ''
  SET @DataTypesToUse8 = ''
  SET @DataTypesToUse9 = ''
  SET @DataTypesToUse10 = ''
END
IF @DataType = 'All'
BEGIN
  SET @ExactMatch = 0
  SET @DataTypesToUse1 = 'NVARCHAR'
  SET @DataTypesToUse2 = 'VARCHAR'
  SET @DataTypesToUse3 = 'NTEXT'
  SET @DataTypesToUse4 = 'TEXT'
  SET @DataTypesToUse5 = 'NCHAR'
  SET @DataTypesToUse6 = 'CHAR'
  SET @DataTypesToUse7 = 'UNIQUEIDENTIFIER'
  SET @DataTypesToUse8 = 'INT'
  SET @DataTypesToUse9 = 'BIGINT'
  SET @DataTypesToUse10 = 'SMALLINT'
  SET @DataTypesToUse11 = 'TINYINT'
  SET @DataTypesToUse12 = 'FLOAT'
  SET @DataTypesToUse13 = 'REAL'
  SET @DataTypesToUse14 = 'DECIMAL'
  SET @DataTypesToUse15 = 'MONEY'
  SET @DataTypesToUse16 = 'SMALLMONEY'
  SET @DataTypesToUse17 = 'BIT'
  SET @DataTypesToUse19 = 'DATETIME'
  SET @DataTypesToUse20 = 'SMALLDATETIME'
END
INSERT INTO @Schema(STableName, SColumnName, SDataType, DataSize)
SELECT T.TABLE_NAME, C.COLUMN_NAME, C.DATA_TYPE, C.CHARACTER_MAXIMUM_LENGTH
FROM Information_Schema.Tables AS T
JOIN Information_Schema.Columns AS C
ON T.TABLE_NAME = C.TABLE_NAME
WHERE T.TABLE_TYPE = 'BASE TABLE'
AND (DATA_TYPE = @DataTypesToUse1 OR DATA_TYPE = @DataTypesToUse2 OR DATA_TYPE = @DataTypesToUse3 OR DATA_TYPE = @DataTypesToUse4
OR DATA_TYPE = @DataTypesToUse5 OR DATA_TYPE = @DataTypesToUse6 OR DATA_TYPE = @DataTypesToUse7  OR DATA_TYPE = @DataTypesToUse8
OR DATA_TYPE = @DataTypesToUse9 OR DATA_TYPE = @DataTypesToUse10 OR DATA_TYPE = @DataTypesToUse11 OR DATA_TYPE = @DataTypesToUse12
OR DATA_TYPE = @DataTypesToUse13 OR DATA_TYPE = @DataTypesToUse14 OR DATA_TYPE = @DataTypesToUse15 OR DATA_TYPE = @DataTypesToUse16
 OR DATA_TYPE = @DataTypesToUse17 OR DATA_TYPE = @DataTypesToUse18 OR DATA_TYPE = @DataTypesToUse19 OR DATA_TYPE = @DataTypesToUse20)
ORDER BY T.TABLE_NAME, C.COLUMN_NAME
SELECT @LoopNo = 1, @TotalRows = MAX(RowID)
FROM @Schema
WHILE @LoopNo <= @TotalRows
BEGIN
  IF @ExactMatch = 1
    SET @SQL = 'IF EXISTS(SELECT * FROM ReplaceTableName WHERE CONVERT(NVARCHAR(MAX), [ReplaceColumnName]) = ''' +
    @DataToFind + ''') SET @DataExists = 1 ELSE SET @DataExists = 0'
  ELSE
    SET @SQL = 'IF EXISTS(SELECT * FROM ReplaceTableName WHERE CONVERT(NVARCHAR(MAX), [ReplaceColumnName]) LIKE ''%' +
    @DataToFind + '%'') SET @DataExists = 1 ELSE SET @DataExists = 0'
  SET @ParamDef = '@DataExists Bit OUTPUT'
  SELECT @SQL = REPLACE(REPLACE(@SQL, 'ReplaceTableName', QUOTENAME(STableName)), 'ReplaceColumnName', SColumnName)
  FROM @Schema
  WHERE RowId = @LoopNo
  EXEC SP_EXECUTESQL @SQL, @ParamDef, @DataExists = @DataExists OUTPUT
  IF @DataExists = 1
  BEGIN
    SELECT @TableFound = STableName FROM @Schema WHERE RowID = @LoopNo
    SELECT @ColumnFound = SColumnName FROM @Schema WHERE RowID = @LoopNo
    SELECT @DataTypeFound = SDataType FROM @Schema WHERE RowID = @LoopNo
    SELECT @DataTypeSize = DataSize
    FROM @Schema
    WHERE RowID = @LoopNo
    IF @DataTypeSize <> ''
      SET @DataTypeFound = @DataTypeFound + '(' + @DataTypeSize + ')'
    SET @SQL = 'SELECT [' + @ColumnFound + '] FROM [' + @TableFound + '] WHERE CONVERT(NVARCHAR(MAX), [' + @ColumnFound + ']) '
    IF @CaseSensitive = 1
      SET @SQL = + @SQL + 'COLLATE Latin1_General_CS_AS '
    IF @ExactMatch = 0
      SET @SQL = @SQL + 'LIKE ''%' + @DataToFind + '%'''
    ELSE
      SET @SQL = @SQL + '= ''' + @DataToFind + ''''
    INSERT INTO @Found(Match)
    EXEC SP_EXECUTESQL @SQL
    UPDATE @Found
    SET FTableName = @TableFound, FColumnName = @ColumnFound, FDataType = @DataTypeFound
    WHERE FTableName = ''
  END
  SET @LoopNo = @LoopNo + 1
END
IF @ExactMatch = 0
  SELECT FTableName AS 'Table', FColumnName AS 'Column', FDataType AS 'Data Type', Match -- Note: If the Data Type is not desired to be seen, remove this here.
  FROM @Found
  ORDER BY FTableName, FColumnName, Match
ELSE
  SELECT FTableName AS 'Table', FColumnName AS 'Column', FDataType AS 'Data Type' -- Note: If the Data Type is not desired to be seen, remove this here.
  FROM @Found
  ORDER BY FTableName, FColumnName

";}i:2;i:3;i:3;s:7688:" sql>
-- PLEASE DEFINE SEARCH CRITERIA BEFORE RUNNING THIS SCRIPT.
-- Change "Symantec_CMDB" to the database name to use if it is different.
DECLARE @DataToFind NVARCHAR(MAX) = 'Server' -- Change the value of @DataToFind to be what is to be searched for.
DECLARE @DataType NVARCHAR(6) = 'Text' -- Change the value of @DataType to be Text (default), Number, Guid, Date or All.
DECLARE @ExactMatch BIT = 0 -- Change the value of @ExactMatch to be 0 or 1. 0 equals a wildcard match (default), 1 equals an exact match.
DECLARE @CaseSensitive BIT = 0 -- Change the value of @CaseSentitive to be 0 or 1. 0 equals not case sentitive (default), 1 equals case sensitive.
--
DECLARE @Schema TABLE (RowID INT IDENTITY(1,1), STableName NVARCHAR(MAX), SColumnName NVARCHAR(MAX), SDataType NVARCHAR(MAX), DataSize NVARCHAR(100))
DECLARE @Found TABLE(FTableName NVARCHAR(MAX) DEFAULT '', FColumnName NVARCHAR(MAX) DEFAULT '', FDataType NVARCHAR(MAX), Match NVARCHAR(MAX))
DECLARE @LoopNo INT, @TotalRows INT, @SQL NVARCHAR(MAX), @ParamDef NVARCHAR(MAX), @DataExists BIT, @TableFound NVARCHAR(MAX), @ColumnFound NVARCHAR(MAX),
@DataTypeFound NVARCHAR(MAX), @DataTypeSize NVARCHAR(MAX), @DataTypesToUse1 NVARCHAR(16), @DataTypesToUse2 NVARCHAR(16), @DataTypesToUse3 NVARCHAR(16),
@DataTypesToUse4 NVARCHAR(16), @DataTypesToUse5 NVARCHAR(16), @DataTypesToUse6 NVARCHAR(16), @DataTypesToUse7 NVARCHAR(16), @DataTypesToUse8 NVARCHAR(16),
@DataTypesToUse9 NVARCHAR(16), @DataTypesToUse10 NVARCHAR(16), @DataTypesToUse11 NVARCHAR(16), @DataTypesToUse12 NVARCHAR(16), @DataTypesToUse13 NVARCHAR(16),
@DataTypesToUse14 NVARCHAR(16), @DataTypesToUse15 NVARCHAR(16), @DataTypesToUse16 NVARCHAR(16), @DataTypesToUse17 NVARCHAR(16), @DataTypesToUse18 NVARCHAR(16),
@DataTypesToUse19 NVARCHAR(16), @DataTypesToUse20 NVARCHAR(16)
--Note: This script will only search the defined data types as specified by the @DataType variable. For example, if String is the data type, numeric
--data types such as INT will not be searched, however, if the number being searched for exists in an NVARCHAR, the match will be found.
IF @DataType = 'Text'
BEGIN
  SET @DataTypesToUse1 = 'NVARCHAR'
  SET @DataTypesToUse2 = 'VARCHAR'
  SET @DataTypesToUse3 = 'NTEXT'
  SET @DataTypesToUse4 = 'TEXT'
  SET @DataTypesToUse5 = 'NCHAR'
  SET @DataTypesToUse6 = 'CHAR'
  SET @DataTypesToUse7 = ''
  SET @DataTypesToUse8 = ''
  SET @DataTypesToUse9 = ''
  SET @DataTypesToUse10 = ''
END
IF @DataType = 'Guid'
BEGIN
  SET @DataTypesToUse1 = 'UNIQUEIDENTIFIER'
  SET @DataTypesToUse2 = 'NVARCHAR'
  SET @DataTypesToUse3 = ''
  SET @DataTypesToUse4 = ''
  SET @DataTypesToUse5 = ''
  SET @DataTypesToUse6 = ''
  SET @DataTypesToUse7 = ''
  SET @DataTypesToUse8 = ''
  SET @DataTypesToUse9 = ''
  SET @DataTypesToUse10 = ''
END
IF @DataType = 'Number'
BEGIN
  SET @DataTypesToUse1 = 'INT'
  SET @DataTypesToUse2 = 'BIGINT'
  SET @DataTypesToUse3 = 'SMALLINT'
  SET @DataTypesToUse4 = 'TINYINT'
  SET @DataTypesToUse5 = 'FLOAT'
  SET @DataTypesToUse6 = 'REAL'
  SET @DataTypesToUse7 = 'DECIMAL'
  SET @DataTypesToUse8 = 'MONEY'
  SET @DataTypesToUse9 = 'SMALLMONEY'
  SET @DataTypesToUse10 = 'BIT'
END
-- Note: DateTime values are stored as (example) 2011-12-06 07:45:09.257, however, appear as Dec 6 2011  7:45AM.
-- To search for "2011-12-06", specify "Dec  6 2011". Also  note that for single digit days, there is an extra space
-- after the month, as the above example shows.
IF @DataType = 'Date'
BEGIN
  SET @ExactMatch = 0
  SET @DataTypesToUse1 = 'DATETIME'
  SET @DataTypesToUse2 = 'SMALLDATETIME'
  SET @DataTypesToUse3 = 'NVARCHAR'
  SET @DataTypesToUse4 = ''
  SET @DataTypesToUse5 = ''
  SET @DataTypesToUse6 = ''
  SET @DataTypesToUse7 = ''
  SET @DataTypesToUse8 = ''
  SET @DataTypesToUse9 = ''
  SET @DataTypesToUse10 = ''
END
IF @DataType = 'All'
BEGIN
  SET @ExactMatch = 0
  SET @DataTypesToUse1 = 'NVARCHAR'
  SET @DataTypesToUse2 = 'VARCHAR'
  SET @DataTypesToUse3 = 'NTEXT'
  SET @DataTypesToUse4 = 'TEXT'
  SET @DataTypesToUse5 = 'NCHAR'
  SET @DataTypesToUse6 = 'CHAR'
  SET @DataTypesToUse7 = 'UNIQUEIDENTIFIER'
  SET @DataTypesToUse8 = 'INT'
  SET @DataTypesToUse9 = 'BIGINT'
  SET @DataTypesToUse10 = 'SMALLINT'
  SET @DataTypesToUse11 = 'TINYINT'
  SET @DataTypesToUse12 = 'FLOAT'
  SET @DataTypesToUse13 = 'REAL'
  SET @DataTypesToUse14 = 'DECIMAL'
  SET @DataTypesToUse15 = 'MONEY'
  SET @DataTypesToUse16 = 'SMALLMONEY'
  SET @DataTypesToUse17 = 'BIT'
  SET @DataTypesToUse19 = 'DATETIME'
  SET @DataTypesToUse20 = 'SMALLDATETIME'
END
INSERT INTO @Schema(STableName, SColumnName, SDataType, DataSize)
SELECT T.TABLE_NAME, C.COLUMN_NAME, C.DATA_TYPE, C.CHARACTER_MAXIMUM_LENGTH
FROM Information_Schema.Tables AS T
JOIN Information_Schema.Columns AS C
ON T.TABLE_NAME = C.TABLE_NAME
WHERE T.TABLE_TYPE = 'BASE TABLE'
AND (DATA_TYPE = @DataTypesToUse1 OR DATA_TYPE = @DataTypesToUse2 OR DATA_TYPE = @DataTypesToUse3 OR DATA_TYPE = @DataTypesToUse4
OR DATA_TYPE = @DataTypesToUse5 OR DATA_TYPE = @DataTypesToUse6 OR DATA_TYPE = @DataTypesToUse7  OR DATA_TYPE = @DataTypesToUse8
OR DATA_TYPE = @DataTypesToUse9 OR DATA_TYPE = @DataTypesToUse10 OR DATA_TYPE = @DataTypesToUse11 OR DATA_TYPE = @DataTypesToUse12
OR DATA_TYPE = @DataTypesToUse13 OR DATA_TYPE = @DataTypesToUse14 OR DATA_TYPE = @DataTypesToUse15 OR DATA_TYPE = @DataTypesToUse16
 OR DATA_TYPE = @DataTypesToUse17 OR DATA_TYPE = @DataTypesToUse18 OR DATA_TYPE = @DataTypesToUse19 OR DATA_TYPE = @DataTypesToUse20)
ORDER BY T.TABLE_NAME, C.COLUMN_NAME
SELECT @LoopNo = 1, @TotalRows = MAX(RowID)
FROM @Schema
WHILE @LoopNo <= @TotalRows
BEGIN
  IF @ExactMatch = 1
    SET @SQL = 'IF EXISTS(SELECT * FROM ReplaceTableName WHERE CONVERT(NVARCHAR(MAX), [ReplaceColumnName]) = ''' +
    @DataToFind + ''') SET @DataExists = 1 ELSE SET @DataExists = 0'
  ELSE
    SET @SQL = 'IF EXISTS(SELECT * FROM ReplaceTableName WHERE CONVERT(NVARCHAR(MAX), [ReplaceColumnName]) LIKE ''%' +
    @DataToFind + '%'') SET @DataExists = 1 ELSE SET @DataExists = 0'
  SET @ParamDef = '@DataExists Bit OUTPUT'
  SELECT @SQL = REPLACE(REPLACE(@SQL, 'ReplaceTableName', QUOTENAME(STableName)), 'ReplaceColumnName', SColumnName)
  FROM @Schema
  WHERE RowId = @LoopNo
  EXEC SP_EXECUTESQL @SQL, @ParamDef, @DataExists = @DataExists OUTPUT
  IF @DataExists = 1
  BEGIN
    SELECT @TableFound = STableName FROM @Schema WHERE RowID = @LoopNo
    SELECT @ColumnFound = SColumnName FROM @Schema WHERE RowID = @LoopNo
    SELECT @DataTypeFound = SDataType FROM @Schema WHERE RowID = @LoopNo
    SELECT @DataTypeSize = DataSize
    FROM @Schema
    WHERE RowID = @LoopNo
    IF @DataTypeSize <> ''
      SET @DataTypeFound = @DataTypeFound + '(' + @DataTypeSize + ')'
    SET @SQL = 'SELECT [' + @ColumnFound + '] FROM [' + @TableFound + '] WHERE CONVERT(NVARCHAR(MAX), [' + @ColumnFound + ']) '
    IF @CaseSensitive = 1
      SET @SQL = + @SQL + 'COLLATE Latin1_General_CS_AS '
    IF @ExactMatch = 0
      SET @SQL = @SQL + 'LIKE ''%' + @DataToFind + '%'''
    ELSE
      SET @SQL = @SQL + '= ''' + @DataToFind + ''''
    INSERT INTO @Found(Match)
    EXEC SP_EXECUTESQL @SQL
    UPDATE @Found
    SET FTableName = @TableFound, FColumnName = @ColumnFound, FDataType = @DataTypeFound
    WHERE FTableName = ''
  END
  SET @LoopNo = @LoopNo + 1
END
IF @ExactMatch = 0
  SELECT FTableName AS 'Table', FColumnName AS 'Column', FDataType AS 'Data Type', Match -- Note: If the Data Type is not desired to be seen, remove this here.
  FROM @Found
  ORDER BY FTableName, FColumnName, Match
ELSE
  SELECT FTableName AS 'Table', FColumnName AS 'Column', FDataType AS 'Data Type' -- Note: If the Data Type is not desired to be seen, remove this here.
  FROM @Found
  ORDER BY FTableName, FColumnName

";}i:2;i:6568;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:14263;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:14263;}i:31;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:14263;}}