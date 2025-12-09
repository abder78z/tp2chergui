const bonnesReponses = {
    q1: "Messi",
    q2: "Messi",
    q3: "Real Madrid",
    q4: "Real Madrid",
    q5: "oui",
    q6: "Messi",
    q7: "Real Madrid",
    q8: "Messi",
    q9: "Messi",
    q10: "Neymar"
  };

  function corriger() {
    let score = 0;
    for (let q in bonnesReponses) {
      const choix = document.querySelector(`input[name="${q}"]:checked`);
      if (choix && choix.value === bonnesReponses[q]) {
        score++;
      }
    }
    document.getElementById("resultat").innerText = "Score : " + score + "/10";
  }

  function effacer() {
    const inputs = document.querySelectorAll("input[type=radio]");
    inputs.forEach(i => i.checked = false);
    document.getElementById("resultat").innerText = "";
  }

  function ouvrirCorrige() {
    const fenetre = window.open("", "Corrigé", "width=400,height=500");
    fenetre.document.write("<h1>Corrigé</h1>");
    for (let q in bonnesReponses) {
      fenetre.document.write("<p>" + q.toUpperCase() + " : " + bonnesReponses[q] + "</p>");
    }
    fenetre.document.write('<button onclick="window.close()">Fermer</button>');
  }