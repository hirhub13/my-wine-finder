function bestelle()
{
    var okay = true;
    var errMess = "";
    var vorname = document.getElementById("vorname").value;
    var nachname = document.getElementById("nachname").value;
    var email = document.getElementById("email").value;
    var anz = document.getElementById("anz").value;
    if (vorname === "")
    {
        okay = false;
        errMess = "Bitte einen Vornamen eingeben!";
    }

    if (nachname === "")
    {
        okay = false;
        errMess = "Bitte einen Nachnamen eingeben!";
    }

    if (email === "")
    {
        okay = false;
        errMess = "Bitte eine E-Mail eingeben!";
    }
    
    if(isNaN(anz))
    {
        okay = false;
        errMess = "Bitte eine gültige Anzahl eingeben!";
    }
    
    if(anz<0)
    {
        okay = false;
        errMess = "Bitte eine gültige Anzahl eingeben!";
    }
    
    if (okay)
    {
        var formeingabe = document.getElementById("formeingabe").submit();
    }

    document.getElementById("err").innerHTML = errMess;
    return okay;
}
