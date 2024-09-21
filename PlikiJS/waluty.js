let prices=
{
    EUR: 4.05,
    USD: 3.99,
    GBP: 4.80,
}
var kwotaDoZaplaty = 0;
var kwotaDoOtrzymania = 0;

function kwotaDoZapl()
{
    document.getElementById("kwotaDoZaplatyPLN").innerHTML = kwotaDoZaplaty.toFixed(2);
}

function kwotaDoOtrzy()
{
    document.getElementById("kwotaDoOtrzymaniaPLN").innerHTML = kwotaDoOtrzymania.toFixed(2);
}


function kupno()
{
    let cenaEUR = document.getElementById("cenaEUR").textContent;
    let kupnoEUR = document.getElementById("zakupEURO").value;
    let cenaUSD = document.getElementById("cenaUSD").textContent;
    let kupnoUSD = document.getElementById("zakupUSD").value;
    let cenaGBP = document.getElementById("cenaGBP").textContent;
    let kupnoGBP = document.getElementById("zakupGBP").value;


        document.getElementById("zaplataEUR").innerHTML = (+cenaEUR * kupnoEUR).toFixed(2);
        document.getElementById("zaplataUSD").innerHTML = (+cenaUSD * kupnoUSD).toFixed(2);
        document.getElementById("zaplataGBP").innerHTML = (+cenaGBP * kupnoGBP).toFixed(2);

        kwotaDoZaplaty = +((+cenaEUR * kupnoEUR).toFixed(2)) + +((+cenaUSD * kupnoUSD).toFixed(2)) + +((+cenaGBP * kupnoGBP).toFixed(2));
        kwotaDoZapl();
}

function sprzedaz()
{
    let cenaEUR = document.getElementById("cenaEUR").textContent;
    let sprzedazEUR = document.getElementById("sprzedazEURO").value;
    let cenaUSD = document.getElementById("cenaUSD").textContent;
    let sprzedazUSD = document.getElementById("sprzedazUSD").value;
    let cenaGBP = document.getElementById("cenaGBP").textContent;
    let sprzedazGBP = document.getElementById("sprzedazGBP").value;


        document.getElementById("otrzymanaEUR").innerHTML = (+cenaEUR * sprzedazEUR).toFixed(2);
        document.getElementById("otrzymanaUSD").innerHTML = (+cenaUSD * sprzedazUSD).toFixed(2);
        document.getElementById("otrzymanaGBP").innerHTML = (+cenaGBP * sprzedazGBP).toFixed(2);

        kwotaDoOtrzymania = +((+cenaEUR * sprzedazEUR).toFixed(2)) + +((+cenaUSD * sprzedazUSD).toFixed(2)) + +((+cenaGBP * sprzedazGBP).toFixed(2));
        kwotaDoOtrzy();
}

function sumuj()
{
    document.getElementById("suma").innerHTML = "SUMA: " + +((kwotaDoOtrzymania - kwotaDoZaplaty).toFixed(2));
}

function changingPrices()
{
    function losowaZmiana(min, max) {
        return (Math.random() * (max - min) + min) / 100;
    }

    function aktualizujCene(waluta, min, max, elementCenaId, elementZmianaId) {
        let poprzedniaCena = prices[waluta];
        let zmiana = losowaZmiana(min, max);
        let nowaCena = poprzedniaCena + (poprzedniaCena * zmiana);
        nowaCena = nowaCena.toFixed(2);

        document.getElementById(elementCenaId).innerText = nowaCena;
        document.getElementById(elementZmianaId).innerText = (nowaCena - poprzedniaCena).toFixed(2);

        prices[waluta] = parseFloat(nowaCena);
    }

    function aktualizujWaluty() {
        aktualizujCene("EUR", -10, 10, "cenaEUR", "zmianaEUR");

        aktualizujCene("USD", -7, 14, "cenaUSD", "zmianaUSD");

        aktualizujCene("GBP", -17, 11, "cenaGBP", "zmianaGBP");
    }

    setInterval(aktualizujWaluty, 180000);

    aktualizujWaluty();
}


document.addEventListener("keydown", function(event) {
    if (event.key === "Enter") {
        kupno();
        sprzedaz();
        sumuj();
    }
});