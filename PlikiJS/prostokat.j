function Oblicz()
{
    var BokA = document.getElementById("bokA").value;
    var BokB = document.getElementById("bokB").value;

    let bokC = +BokA;
    let bokD = +BokB;
    if(BokA>0 && BokB>0)
    {
    let pole = bokC * bokD;
    let obwod = 2 * bokC + 2*bokD;

    document.getElementById("wynik").innerHTML = "Pole: " + pole + "<br> Obwód: " + obwod ;
    }
    else
    {
        document.getElementById("wynik").innerHTML = "Podaj prawidłowe wartości";
    }

}