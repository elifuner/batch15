//fetch account records that were created in previous month (month of may 2023 because we are in June 2023)
list<account> allacc = [select id, name from account where createdDate = last_month];
AccountQueueableExample aq = new AccountQueueableExample(allacc);
//queue the queueable
id jobId = system.enqueueJob(aq);//to add queueable in apex jobs
//we can get status of the job via JOB ID here
AsyncApexJob ap = [SELECT Status, JobType, JobItemsProcessed, Id, MethodName, NumberOfErrors FROM AsyncApexJob where id = :jobId];

//create new account record
    //pass accid to queueable
Account ac = new account(name = 'Default Acc'); 
insert ac;

//get all cases where accountid is null (orphan cases)
    //pass all cases to queueable
List<case> allCase = [select id, accountid from case where accountid = null];
// //1. normal world
// CasesQueueable cq = new CasesQueueable();//this will call LINE 5
// cq.cases = allCase;
// cq.defaultAccId = ac.id;

//2. consturctor world
CasesQueueable cq2 = new CasesQueueable(ac.id, allCase); //this will call LINE 8

system.enqueueJob(cq2); 
//our class execution will be queues in apex jobs
    //it will be picked by system and it will call execute method