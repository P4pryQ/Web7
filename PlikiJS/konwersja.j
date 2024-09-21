function konwersja(){
    let lenght = document.getElementById("lenght").value;
    let unit = document.getElementById("unit").value;
    let mm,cm,dm,m,km;

    switch(unit)
    {
        case "mm":
            mm = lenght;
            break;
            case "cm":
            mm = lenght * 10;
            break;
            case "dm":
            mm = lenght * 100;
            break;
            case "m":
            mm = lenght * 1000;
            break;
            case "km":
            mm = lenght * 1000000;
            break;
    }
    cm=mm/10;
    dm=mm/100;
    m=mm/1000;
    km=mm/1000000;

    document.getElementById("mm").innerHTML = mm;
    document.getElementById("cm").innerHTML = cm;
    document.getElementById("dm").innerHTML = dm;
    document.getElementById("m").innerHTML = m;
    document.getElementById("km").innerHTML = km;
    
}