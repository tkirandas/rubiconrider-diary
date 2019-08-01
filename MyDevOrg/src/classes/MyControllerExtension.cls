public with sharing class MyControllerExtension {
    private ApexPages.StandardSetController setController;

    public MyControllerExtension(ApexPages.StandardSetController setController) {
        this.setController = setController;
        
        Account [] records = [SELECT Id, Name FROM Account LIMIT 5];
        setController.setSelected(records);
    }
}