const url = 'https://jsonplaceholder.typicode.com/comments';
const method = 'GET';
function xhr(method,url){
   return new Promise((resolve,reject)=>{
     const xhr = new XMLHttpRequest();
     xhr.open(method,url);
     xhr.responseType = 'json';
     xhr.setRequestHeader('Content-Type','application/json');
     xhr.onload = () =>{
        if(xhr.status >= 400){
           reject(xhr.response);

        }else{
           resolve(xhr.response);
        }
     }
     xhr.onerror = () =>{
        reject(xhr.response);
     }
     xhr.send();
   });
}
let num = -5;
function next(data,num){
    for(i = num; i < num+5; i++ ){
      let section_comments = document.querySelector('.section_comments');
      let div_body = document.createElement('div');
      let div_email = document.createElement('div');
      div_email.classList.add('comments_email');
      div_body.classList.add('comments_body');
      div_body.innerHTML += data[i].body;
      div_email.innerHTML+= data[i].email;
      section_comments.append(div_email);
      section_comments.append(div_body); 
    }    
}  
xhr(method,url)
.then( data => {
   next(data,num+=5);
   const button = document.querySelector('.button');
     button.addEventListener('click',() => next(data,num+=5));
})
.catch(err => console.log(err));
//localhost
let textarea = document.querySelector('.sub-textarea');
let save = document.querySelector('.save');
let n = document.querySelector(".next");
let p = document.querySelector(".prev");
let number_prev = prev(localStorage.length);
let number_up = go(localStorage.length-localStorage.length);
let go_to = go(localStorage.length-2);
let textarea_organizer = document.querySelector(`.textarea_organizer`);
let save_textarea_organizer = document.querySelector('.save_textarea_organizer');
let textarea_organizer_info = document.querySelector('.textarea_organizer_info')
function go(local){
   return function(n){
      return local +=n;
   }
}
function prev(local){
   return function(n){
      return local -=n;
   }
}
textarea.innerHTML = localStorage.getItem(`textarea${localStorage.length-1}`);
//save from localStorage
save.addEventListener('click',()=>{
   let local = localStorage.length;
   localStorage.setItem(`textarea${local}`,document
   .querySelector('.sub-textarea')
   .value
   );
});
textarea.addEventListener('keyup',()=>{
   if(localStorage.length == 0){
        localStorage.setItem(`textarea${1}`,document
   .querySelector('.sub-textarea')
   .value
   ); 
   }else{
   let local = localStorage.length;
   localStorage.setItem(`textarea${local-1}`,document
   .querySelector('.sub-textarea')
   .value
   );}
});
// localStorage blocknoote
p.addEventListener('mouseup', ()=>{
   let i = number_up(1);
   if(i < localStorage.length){
   textarea.innerHTML = localStorage.getItem(`textarea${i}`);
}if(localStorage.length - 1 < i){
   textarea.innerHTML = localStorage.getItem(`textarea${0}`);
   number_up = go(localStorage.length-localStorage.length);
}  
});
n.addEventListener('mouseup',()=>{
   let i = number_prev(1);
   if(i < localStorage.length + 1 && i > 0){
   textarea.innerHTML = localStorage.getItem(`textarea${i}`);
}else{
   number_prev = prev(localStorage.length);
   textarea.innerHTML = localStorage.getItem(`textarea${0}`);
}  
});
function createText(){
   let organizer_text = document.querySelector('.organizer_text');
   for(let i = 0; i < localStorage.length; i++){
   let div = document.createElement("div");
   div.classList.add('info');
   div.innerHTML += `${i+1}.) `;
   div.innerHTML += localStorage.getItem(`organaizer_create${i-1}`);
   organizer_text.append(div);
   }
}
function save_organizer(){
   let i = go_to(1);
   localStorage.setItem(`organaizer_create${i}`,document.querySelector(`.textarea_organizer`).value);
}
function deletes(){
   let info = document.querySelectorAll('.info');
   info.forEach( i => i.remove());
}
textarea_organizer_info.addEventListener('click', deletes);
textarea_organizer_info.addEventListener('click', createText);
save_textarea_organizer.addEventListener('click', save_organizer);
save_textarea_organizer.addEventListener('click', deletes);
save_textarea_organizer.addEventListener('click', createText);


let checkbox = document.querySelector('.checkbox');
let login_1 = document.querySelector('.login_1');
let mail_1 = document.querySelector('.mail_1');
let password_3 = document.querySelector('.password_3');
let password_4 = document.querySelector('.password_4');

checkbox.addEventListener('click',()=>{
   localStorage.setItem('checkbox',checkbox.checked);
});
login_1.addEventListener('keyup',()=>{
   localStorage.setItem('login', login_1.value);
});
mail_1.addEventListener('keyup',()=>{
   localStorage.setItem('mail', mail_1.value);
});
password_3.addEventListener('keyup',()=>{
   let value = password_3.value;
   localStorage.setItem('password_1', encodeURI(value)); // не работает, почему? 
});
password_4.addEventListener('keyup',()=>{
   let value = password_4.value;
   localStorage.setItem('password_2', encodeURI(value)); // не работает, почему?
});
window.addEventListener('load', ()=>{
   checked = JSON.parse(localStorage.getItem('checkbox'));
   document.querySelector(".checkbox").checked = checked;
   login_1.value += localStorage.getItem('login');
   mail_1.value += localStorage.getItem('mail');
   password_3.value += localStorage.getItem('password_1');
   password_4.value += localStorage.getItem('password_2');
});
