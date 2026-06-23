(function () {
  var lang = document.documentElement.getAttribute("lang") || "fr";
  try {
    localStorage.setItem("portfolio-lang", lang);
  } catch (error) {}

  document.querySelectorAll("[data-switch-lang]").forEach(function (link) {
    link.addEventListener("click", function (event) {
      event.preventDefault();
      var targetLang = link.getAttribute("data-switch-lang");
      try {
        localStorage.setItem("portfolio-lang", targetLang);
      } catch (error) {}
      window.location.href = link.getAttribute("href") + window.location.hash;
    });
  });
}());
