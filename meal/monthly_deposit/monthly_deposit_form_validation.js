

function Form_Validation(counter)
{
  
  

    for(i=1; i<counter; i++)
    {
       
      
        if(document.getElementById("deposit"+i).value.trim()=="")
        {
              alert("Please Provide Monthly Deposit");
              document.getElementById("deposit"+i).focus();
              return false;
        }
    
    }
  
    
}
