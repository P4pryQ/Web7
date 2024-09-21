var sekundy_na_stronie = 0;

function odliczanie()
{
    var czas = new Date();

    var dzien = czas.getDate();
    if(dzien<10) dzien = "0"+dzien;
    var miesiac = czas.getMonth() +1 ;
    if(miesiac<10) miesiac = "0"+miesiac;
    var rok = czas.getFullYear();
    var godziny = czas.getHours();
    if(godziny<10) godziny = "0"+godziny;
    var minuty = czas.getMinutes();
    if(minuty<10) minuty = "0"+minuty;
    var sekundy = czas.getSeconds();
    if(sekundy<10) sekundy = "0"+sekundy;

    document.getElementById("czas").innerHTML = dzien + "." + miesiac + "." + rok + "<br>" + godziny + ":" + minuty + ":" + sekundy;

    sekundy_na_stronie += 0.5;

    document.getElementById("czas_na_stronie").innerHTML = "Czas na stronie: " + sekundy_na_stronie;

    setTimeout("odliczanie()", 500)
}