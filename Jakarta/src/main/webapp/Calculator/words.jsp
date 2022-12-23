<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.text.DecimalFormat" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <body>
        <%
        
        //note to self: pretty sure later on I will forget what even all this, so check back all the notes on maybank standalone app.
        double tot = Double.parseDouble(request.getParameter("number"));
        DecimalFormat df = new DecimalFormat("#.####");
        String formatResult = df.format(tot);

        ArrayList<String> list = new ArrayList<>();
        String[] array = formatResult.split("");
        list.addAll(Arrays.asList(array));

        if(array[0].equals("-")) {
            for (int i = 0; i < array.length; i++) {
                String element = array[i];
                if (element.equals("-")) {
                    out.print("Negative ");
                } else if (element.equals("1")) {
                    out.print("One ");
                } else if (element.equals("2")) {
                    out.print("Two ");
                } else if (element.equals("3")) {
                    out.print("Three ");
                } else if (element.equals("4")) {
                    out.print("Four ");
                } else if (element.equals("5")) {
                    out.print("Five ");
                } else if (element.equals("6")) {
                    out.print("Six ");
                } else if (element.equals("7")) {
                    out.print("Seven ");
                } else if (element.equals("8")) {
                    out.print("Eight ");
                } else if (element.equals("9")) {
                    out.print("Nine ");
                } else if (element.equals("0")) {
                    out.print("Zero ");
                } else if (element.equals(".")) {
                    out.print("Point ");
                }
            }
        } else {
            out.print("Positive ");
            for (int i = 0; i < array.length; i++) {
                String element = array[i];
                if (element.equals("1")) {
                    out.print("One ");
                } else if (element.equals("2")) {
                    out.print("Two ");
                } else if (element.equals("3")) {
                    out.print("Three ");
                } else if (element.equals("4")) {
                    out.print("Four ");
                } else if (element.equals("5")) {
                    out.print("Five ");
                } else if (element.equals("6")) {
                    out.print("Six ");
                } else if (element.equals("7")) {
                    out.print("Seven ");
                } else if (element.equals("8")) {
                    out.print("Eight ");
                } else if (element.equals("9")) {
                    out.print("Nine ");
                } else if (element.equals("0")) {
                    out.print("Zero ");
                } else if (element.equals(".")) {
                    out.print("Point ");
                }
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