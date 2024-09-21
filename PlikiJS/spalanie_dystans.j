function obliczZuzyciePaliwa() {
            var dystans = document.getElementById("dystans").value;
            var paliwoZuzyte = document.getElementById("paliwoZuzyte").value;

            if(dystans > 0 && paliwoZuzyte > 0) {
                var zuzycie = (paliwoZuzyte / dystans) * 100;
                document.getElementById("wynikZuzycie").innerText = "Zużycie paliwa: " + zuzycie.toFixed(2) + " l/100km";
            } else {
                document.getElementById("wynikZuzycie").innerText = "Wprowadź poprawne wartości.";
            }
        }

        function obliczDystans() {
            var srednieSpalanie = document.getElementById("srednieSpalanie").value;
            var iloscPaliwa = document.getElementById("iloscPaliwa").value;

            if(srednieSpalanie > 0 && iloscPaliwa > 0) {
                var dystans = (iloscPaliwa / srednieSpalanie) * 100;
                document.getElementById("wynikDystans").innerText = "Możesz pokonać: " + dystans.toFixed(2) + " km";
            } else {
                document.getElementById("wynikDystans").innerText = "Wprowadź poprawne wartości.";
            }
        }

        function obliczPotrzebnePaliwo() {
            var dystansDoPokonania = document.getElementById("dystansDoPokonania").value;
            var srednieSpalanie = document.getElementById("srednieSpalanie1").value;

            if(dystansDoPokonania > 0 && srednieSpalanie > 0) {
                var potrzebnePaliwo = (dystansDoPokonania * srednieSpalanie) / 100;
                document.getElementById("wynikPotrzebnePaliwo").innerText = "Potrzebne paliwo: " + potrzebnePaliwo.toFixed(2) + " l";
            } else {
                document.getElementById("wynikPotrzebnePaliwo").innerText = "Wprowadź poprawne wartości.";
            }
        }