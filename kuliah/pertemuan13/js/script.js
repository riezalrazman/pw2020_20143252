const tombolCari = document.querySelector('.tombol-cari');
const keyword = document.querySelector('.keyword');
const container = document.querySelector('.container');

//hilangkan button cari
tombolCari.style.display = 'none';

//event ketika menulis di keyword
keyword.addEventListener('keyup', function () {
  //ajax
  /*
    //xmlhttprequest - cara lama
    const xhr = new XMLHttpRequest();
  
    xhr.onreadystatechange = function () {
      if (xhr.readyState == 4 && xhr.status == 200) {
        container.innerHTML = xhr.responseText;
      }
    };
  
    xhr.open('get', 'ajax/ajax_cari.php?keyword=' + keyword.value);
    xhr.send();
  */
  //fetch - cara baru
  fetch('ajax/ajax_cari.php?keyword=' + keyword.value)
    .then((response) => response.text())
    .then((response) => (container.innerHTML = response));
});