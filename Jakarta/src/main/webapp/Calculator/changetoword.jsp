<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <body>
        <%
        double tot = Double.parseDouble(request.getParameter("number"));
        int newtot = (int) tot; //create another variable to change into integers
        String sign;
        int zerod = 0; 
        String value; 
        
        //checking for positive or negative
        if (newtot > 0) {
            
        	sign = "Positive";
            
        } else if (newtot < 0) { 
        	
        	tot = tot * (-1.0); 
        	newtot = newtot * (-1); 
            sign = "Negative"; 
        
        } else if (tot < 1.0 && tot > -1.0 && tot !=0) {

            if (tot < 1.0 && tot > 0.0) {
                    
                sign = "positive zero point ";
                tot = (tot * 10000.0);
                newtot = (int) newtot;
                tot = (double) newtot;
                zerod = 1;
            
            } else {
                
                sign = "negative zero point ";
                tot = (tot * -10000.0);
                newtot = (int) tot;
                tot = (double) newtot;
                zerod = 1;
                
            }

        } else {
                    
            sign = " ";
            out.print("zero");
                    
        }
        
        %>
        
        <%!
        
        String findchar (int numtoAlph) { 
        	
        	String num = " ";
        	switch(numtoAlph) {
        	
        		case '0':
            		num = ("zero  "); 
               		break;  
        	
    			case 1:
                	num = "one"; 
                    break; 
    			
    			case 2:
                	num = "two"; 
                    break; 
                 
    			case 3:
                	num = "three"; 
                    break; 
    			
    			case 4:
                	num = "four"; 
                    break; 
    			
    			case 5:
                	num = "five"; 
                    break;
    			
    			case 6:
                	num = "six"; 
                    break; 
                    
    			case 7:
                	num = "seven"; 
                    break; 
                    
    			case 8:
                	num = "eight"; 
                    break; 
                    
    			case 9:
                	num = "nine"; 
                    break; 
        	}
        	
        	return num; 
        	
        } 
        
        %>

        <% 
        int reverseresult = 0; 
        int totnum = (int) tot; 
        int digit; 
        
        while(totnum > 0) {
                            
        	digit = (totnum %10);
        	reverseresult = ((reverseresult * 10) +digit);
        	totnum = totnum/10;
                            
        }

        int totsign = (int) tot;
        out.print(sign);

                            
        if (zerod == 1) {
                            
            if (newtot < 1000) { 
                
                value = findchar(0); 
                out.print(" " +value);
        
            }
        
            if (newtot < 100) {
            
                value = findchar(0);
                out.print(" " +value);

            }
        
            if (newtot < 10) {
            
                value = findchar(0);
                out.print(" " +value);
        
            }

        }

        while (reverseresult > 0) {   
    
            digit = reverseresult%10;
            value = findchar(digit);
            out.print(" " +value); 
            reverseresult = reverseresult/10;
    
        }

        while ((totsign%10) == 0) {
    
            if (totsign <= 0) {
            
            	break;

        	}
    
        	value = findchar(0);
        	out.print(" " +value);
        	totsign = totsign/10;
        
        }

        double rm = (double) newtot;
        double decimal = newtot - rm;
        decimal = decimal * 10000;
    
        int decimalvalue = (int) decimal;

    
        if (decimalvalue > 0) {
    
            out.print(" " + " point"); 
            
            if (decimalvalue < 1000) { 
            	
            	value = findchar(0); 
            	out.print(" " +value);
    
            } if (decimalvalue < 100) {
            
            	value = findchar(0);
            	out.print(" " +value);

        	} if (decimalvalue < 10) {
            
        		value = findchar(0);
            	out.print(" " +value);
    
       		} while (decimalvalue > 0) {
	    
            digit = (decimalvalue%10);
            reverseresult = ((reverseresult * 10) +digit);
            decimalvalue = decimalvalue/10;	
    
        	} while(reverseresult > 0) {   
    
            digit = reverseresult%10;
            value = findchar(digit);
            out.print(" " +value);
            reverseresult = reverseresult/10;
    
        	}

        }
        %>
       

        <form action="calc.jsp" method="GET">

            >>> <input type="text" name="words" value="<%=tot %>" required>
            <input type="submit" value="Return to calculator">
    
    	</form>
        <br>
        <br>
    </body>
</html>