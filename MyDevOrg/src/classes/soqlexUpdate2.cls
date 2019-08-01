/*Update Phone number sent from VFpage using dynamic soql*/
public class soqlexUpdate2 {
    public string sname{set;get;}
    public string phone{set;get;}
    public List<Account>accs{set;get;}
    public void updateData(){
        accs=[select name,phone from Account where name=:sname];
        for(Account a:accs){
            a.phone=phone;
        }
    update accs;
    }
    
}







/*Update Phone number sent from VFpage using dynamic soql
<apex:page controller="soqlexUpdate2">
    <apex:form>
    <apex:pageBlock title="Dynamic soql Update from VF page">
        <apex:pageBlockButtons location="bottom">
         <apex:commandButton value="Update" action="{!updateData}"/> 
            </apex:pageBlockButtons>
        
            <apex:pageBlockSection>
                <apex:outputLabel value="Name"/>
                <apex:inputText value="{!sname}"/>
            </apex:pageBlockSection>
        <apex:pageBlockSection>
                <apex:outputLabel value="Enter Phone Number"/>
                <apex:inputText value="{!phone}"/>
            </apex:pageBlockSection>
               </apex:pageBlock>
        <apex:pageblock title="Updated Record">
            <apex:pageBlockTable value="{!accs}" var="a">
                <apex:column value="{!a.name}"/>
                                <apex:column value="{!a.phone}"/>                        
           </apex:pageBlockTable>
        </apex:pageblock>
    </apex:form>
</apex:page>
*/