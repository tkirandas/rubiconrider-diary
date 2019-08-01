public class kiranCase {
public Case getCaseDetails() {
        return [SELECT Id, Origin FROM Case
                WHERE Id = :ApexPages.currentPage().getParameters().get('Id')];
    }
}