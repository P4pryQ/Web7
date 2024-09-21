 function obliczCzasPodrozy() {
            var odleglosc = parseFloat(document.getElementById("odleglosc").value);
            var jednostkaOdleglosci = document.getElementById("jednostkaOdleglosci").value;
            var predkosc = parseFloat(document.getElementById("predkosc").value);

            if (jednostkaOdleglosci === "m") {
                odleglosc = odleglosc / 1000; // Konwersja metrów na kilometry
            }

            if (predkosc > 0 && odleglosc > 0) {
                var czas = odleglosc / predkosc; // Czas w godzinach
                var czasSekundy = czas * 3600; // Czas w sekundach
                document.getElementById("wynikCzasPodrozy").innerText = "Czas podróży: " + czas.toFixed(2) + " godzin (" + czasSekundy.toFixed(0) + " sekund)";
            } else {
                document.getElementById("wynikCzasPodrozy").innerText = "Wprowadź poprawne wartości.";
            }
        }

        function obliczSredniaPredkosc() {
            var dystans = parseFloat(document.getElementById("dystans").value);
            var jednostkaDystansu = document.getElementById("jednostkaDystansu").value;
            var czasGodziny = parseFloat(document.getElementById("czasGodziny").value);
            var czasMinuty = parseFloat(document.getElementById("czasMinuty").value);

            // Konwersja jednostek
            if (jednostkaDystansu === "m") {
                dystans = dystans / 1000; // Konwersja metrów na kilometry
            }
            
            var czas = czasGodziny + (czasMinuty / 60);

            if (czas > 0 && dystans > 0) {
                var predkoscKmH = dystans / czas; // Prędkość w km/h
                var predkoscMS = (dystans * 1000) / (czas * 3600); // Prędkość w m/s
                document.getElementById("wynikSredniaPredkosc").innerText = "Średnia prędkość: " + predkoscKmH.toFixed(2) + " km/h (" + predkoscMS.toFixed(2) + " m/s)";
            } else {
                document.getElementById("wynikSredniaPredkosc").innerText = "Wprowadź poprawne wartości.";
            }
        }