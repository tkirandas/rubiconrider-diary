/*Writing dynamic soql query*/
public class soqlExDynamic1 {
    public List<Account>accs{set;get;}
    public string sname{set;get;}
    public void show(){
        
        accs=[select id,name,industry from Account where name=:sname];
    
system.debug(accs);
}
}
/*
soql1ExDynamic.vfp
<apex:page controller="soqlExDynamic1">
    <apex:form >
        <apex:pageBlock title="Dynamic soql query">
       
            <apex:pageBlockButtons location="bottom">
                <apex:commandButton value="Search" action="{!show}"/>
            </apex:pageBlockButtons>
                    <apex:pageBlockSection> 
                            <apex:outputLabel value="Name"/>
                <apex:inputText value="{!sname}"/>
                                  
                 </apex:pageBlockSection>    
            
        </apex:pageBlock>
        <apex:pageblock title="output">
            <apex:pageBlockTable value="{!accs}" var="a">
                <apex:column value="{!a.name}"/>
                <apex:column value="{!a.Id}"/>
                <apex:column value="{!a.industry}"/>
                        
           </apex:pageBlockTable>
        </apex:pageblock>
    </apex:form>

</apex:page>
*/