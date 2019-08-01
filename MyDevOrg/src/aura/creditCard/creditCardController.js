({
  onKeyUp: function(component, event, helper) {
      console.log(event.keyCode);
      if(event.keyCode == 13){
        alert('Enter key pressed');
      }
   }
 })