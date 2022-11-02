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


/*function readAloud() {
  // テキストを取得
  const text = document.getElementById("ima").value

  // ブラウザにWeb Speech API Speech Synthesis機能があるか判定
  if ('speechSynthesis' in window) {
    // 発言を設定
    const uttr = new SpeechSynthesisUtterance()
    uttr.text = text
    // 発言を再生
    window.speechSynthesis.speak(uttr)

  } else {
    alert('大変申し訳ありません。このブラウザは音声合成に対応していません。')
  }
}
*/
