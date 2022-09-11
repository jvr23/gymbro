function notif(){
  console.log (':O');
  const notification = document.querySelector('#notification');
  const contDiv = document.querySelector('#chec-div');
  contDiv.classList.remove('hidden');
  notification.classList.remove('translate-x-full');
}

window.addEventListener("turbo:load",function(){
  const notification = document.querySelectorAll('.notificationIcons');
  const header = document.querySelector('header');
  const headerLogo = document.querySelector('#gymLink');

  notification.forEach(e =>{
    e.addEventListener('click', function(){
      document.querySelector('#chec-div').classList.toggle('hidden');
      document.querySelector('#notification').classList.toggle('translate-x-full');
    }, false)
  })
  window.addEventListener('scroll',()=>{
    if(window.scrollY < 100){
      header.style.backgroundColor = 'transparent';
      headerLogo.style.color = '#000'
    }else if(header.style.backgroundColor !== '#000' && window.scrollY > 100){
      header.style.backgroundColor = 'black';
      headerLogo.style.color = '#fff'
    }
  })
})

