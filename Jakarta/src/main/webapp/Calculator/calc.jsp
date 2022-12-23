<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Calculator</title>
    </head>
    
    <body>
    	<h2>MINI-CALCULATOR</h2>
        <form action="method.jsp" method="GET">
            <tr>
                <td> First Number:  </td>  
                <td> <input type="text" name="num1" > </td><br><br>
            </tr>
            <tr>
                <td> Second Number:  </td>  
                <td> <input type="text" name="num2" > </td><br><br>
            </tr>
            
            <tr>
                <td> <input type="submit"  name="str" value="+"> </td>
              
            </tr>
             <tr>
                <td> <input type="submit"  name="str" value="-"></td>
 
            </tr>
            <tr>
                <td> <input type="submit" name="str" value="*"></td>
            </tr>
            <tr>
                <td> <input type="submit" name="str" value="/"></td>
            </tr>
           
        </form>  
    </body>
</html>