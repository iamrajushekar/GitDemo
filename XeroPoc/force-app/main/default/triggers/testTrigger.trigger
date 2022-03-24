trigger testTrigger on Account (before update) {
    system.debug('I am outside tigger if loop');
    if(Trigger.isAfter && Trigger.isInsert){
        system.debug('I am inside the after and insert loop');
        List<Account> accList = new List<Account>();
        for(Account test: Trigger.new){
            if(!checkRecursive.SetOfIDs.contains(test.Id)){
                test.Name = 'helloworld';
                accList.add(test);
                checkRecursive.SetOfIds.add(test.Id);
                system.debug('I am inside the recusrive loop');
            }
            system.debug('I am outside the recusrive loop');
        }
        
        insert accList;
        system.debug('Value of list::'+accList);
    }
}