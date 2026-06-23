(function () {
  var available = ["fr", "en", "ko"];
  var params = new URLSearchParams(window.location.search);
  var chosen = params.get("lang") || localStorage.getItem("portfolio-lang");

  if (!chosen && navigator.languages) {
    for (var i = 0; i < navigator.languages.length; i += 1) {
      var prefix = navigator.languages[i].slice(0, 2).toLowerCase();
      if (available.indexOf(prefix) !== -1) {
        chosen = prefix;
        break;
      }
    }
  }

  if (available.indexOf(chosen) === -1) {
    chosen = "fr";
  }

  localStorage.setItem("portfolio-lang", chosen);
  window.location.replace("index-" + chosen + ".html" + window.location.hash);
}());
