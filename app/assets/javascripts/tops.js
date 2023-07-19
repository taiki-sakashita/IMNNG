window.addEventListener("DOMContentLoaded", () => {
  const audio = document.getElementById("audio");
  audio.addEventListener('click', function () {
    document.getElementById("sounds").currentTime = 0;
    document.getElementById("sounds").play();
  });
});

$(document).ready(function () {

  $("#load_area").load("partial/_config");

  $("#button1").click(function () {
    loadPartialView('partial/_config');
  });
});

function loadPartialView(loadPath) {
  $("#button_area").load(loadPath, function (response) {
  });
}
