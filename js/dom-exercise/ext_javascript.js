function alertFunction(){
  alert("Yay!");
}

const alertButton = document.querySelector('#btn');

//btn.onclick = () => alert("Hello World");
btn.onclick = alertFunction;

const alertButton2 = document.querySelector('#btn2');

//btn2.addEventListener('click', () => {
//  alert("Hello World");
//});
btn2.addEventListener('click', alertFunction);
btn2.addEventListener('click', function(e){
  console.log(e);
});
btn2.addEventListener('click', function(e){
  console.log(e.target);
});
btn2.addEventListener('click', function(e){
  e.target.parentNode.style.background = 'blue';
});
