AccountsBatch ab = new AccountsBatch();
database.executeBatch(ab, 15);

//Database.executeBatch returns job id
//5 is the size of records
//batch class new instance
Id JobId = Database.executeBatch(new DepartmentsBatch(), 5);
System.debug('JOB ID is '+ JobId);