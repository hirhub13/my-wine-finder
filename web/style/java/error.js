/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function validate()
{
    var okay = true;
    var errMess = "";
    var suche = document.getElementById("suche").value;
    if (suche.trim() === "")
    {
        okay = false;
        errMess = "Bitte eine Lieferadresse eingeben!";
    }
    document.getElementById("err").innerHTML = errMess;
    return okay;
}

