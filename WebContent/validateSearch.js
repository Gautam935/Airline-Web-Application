/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
function validate()
{
    if(/^[A-Z]+[A-Z]$/.test(document.forms["myForm"]["source"].value)==false)
    {
        alert("Source airport code cann't be empty & should be characters only!");
        document.forms["myForm"]["source"].value="";
        return false;
    }
    if(/^[A-Z]+[A-Z]$/.test(document.forms["myForm"]["destination"].value)==false)
    {
        alert("Destination airport code cann't be empty & should be characters only!");
        document.forms["myForm"]["destination"].value="";
        return false;
    }
    if(document.forms["myForm"]["source"].value==document.forms["myForm"]["destination"].value)
    {
        alert("Source & Destination airport Can't be the same!");
        document.forms["myForm"]["source"].value="";
        document.forms["myForm"]["destination"].value="";
        return false;
    }
    if(/^(\d{2})\/(\d{2})\/(\d{4})$/.test(document.forms["myForm"]["jdt"].value)==false)
    {
        alert("Enter valid Date in (dd/MM/yyyy) format");
        document.forms["myForm"]["jdt"].value="";
        return false;
    }
    var dt = new Date(document.forms["myForm"]["jdt"].value);
    dt.setFullYear(dt.getFullYear(),dt.getMonth(),dt.getDate());
    var now= new Date();
    now.setHours(0,0,0,0);
    if(dt<now)
    {
        alert("Travel Date can not be old day.");
        document.forms["myForm"]["jdt"].value="";
	return false;
    }
    now.setDate(now.getDate()+120)
    if(dt>now)
    {
        alert("Travel Date can not be more than 120 days.");
        document.forms["myForm"]["jdt"].value="";
	return false;
    }
    if(/^\d*[0-9]/.test(document.forms["myForm"]["adult"].value)==false)
    {
        alert("Number of passends must be non empty and digits only!");
	return false;
    }
    return true;
}