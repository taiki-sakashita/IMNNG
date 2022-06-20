window.addEventListener("DOMContentLoaded", () => {
  const audio = document.getElementById("audio");
  audio.addEventListener('click', function () {
    document.getElementById("sounds").currentTime = 0;
    document.getElementById("sounds").play();
    //=document.getElementById("zikoku").currentTime = '#';
    //=document.getElementById("zikoku").play();
  });
});

window.addEventListener("DOMContentLoaded", () => {
  const audio = document.getElementById("audio2");
  audio.addEventListener('click', function () {
    document.getElementById("sounds2").currentTime = 0;
    document.getElementById("sounds2").play();
    //=document.getElementById("zikoku").currentTime = '#';
    //=document.getElementById("zikoku").play();
  });
});
