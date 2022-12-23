<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <body>
    
    	<h2>RESULT</h2>
        <%
        String str = request.getParameter("str");
        double num1 = Double.parseDouble(request.getParameter("num1"));
        double num2 = Double.parseDouble(request.getParameter("num2"));
        double answer = 0.0;
      
            if (str.equals("+")) {
            	
            	answer = num1 + num2;
            
            } else  if (str.equals("-")) {
            	
            	answer = num1 - num2;
           
            } else  if (str.equals("*")) {
            	
            	answer = num1 * num2;
            
            } else  if (str.equals("/")) {
                
            	if (num2 == 0) {
                	
            		out.println("Cannot be divided by 0.");
                
            	} else {
                	
            		answer = num1 / num2;
                
            	}
                
                
            } 
           
            out.println("The sum of " +num1 +" and " +num2 +" are " +answer);
            
        %>
		<br>
		<br>
        <form action="words.jsp" method="GET">

            Result: <input type="number" name=number value="<%=answer%>">
            <input type="submit" value="Convert to words">
    
    	</form>
        <br>
        <br>

    </body>
</html>