function obliczPrzekatna(x, y) {
            return Math.sqrt(Math.pow(x, 2) + Math.pow(y, 2));
        }

        document.addEventListener("mousemove", function(event) {
            var x = event.clientX;
            var y = event.clientY;

            document.getElementById("pozycja").innerText = x + " px, " + y + " px";

            var przekatna = obliczPrzekatna(x, y).toFixed(2);
            document.getElementById("przekatna").innerText = przekatna;
        });