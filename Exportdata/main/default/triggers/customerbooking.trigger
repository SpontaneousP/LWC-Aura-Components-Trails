trigger customerbooking on CustomerInfo__c (before insert) {
      if(Trigger.isBefore && (Trigger.IsInsert) )
		{
			for( CustomerInfo__c c : Trigger.New)
			{
				if(c.Phone_no__c== null)
				{
					c.Phone_no__c.AddError('Please Enter The phone number.');
				}
				else if(c.Email_Id__c == '' || c.Email_Id__c == null)
				{
					c.Email_Id__c.AddError('Please Enter emailid of customer.');
				}
				
			}
		   
    }

}