trigger contactBeforeDelete on Contact (before delete) {
for( Contact con :Trigger.old)
{
if(con.accountId !=NULL)
{
con.addError('You cannot delete contact as an account is associated to it!!');
}
}
}