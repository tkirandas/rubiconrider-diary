trigger dedupLead on Lead (before insert) {
    
checkLead.Leadupe(Trigger.New);
    
}