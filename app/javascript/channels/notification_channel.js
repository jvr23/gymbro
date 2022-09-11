import consumer from "channels/consumer"

const user = document.getElementById("user_id");
if(user){
  consumer.subscriptions.create({channel: "NotificationChannel", user_id: user.value}, {
    connected() {
      // Called when the subscription is ready for use on the server
    },
    
  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log(data);
    console.log(data);
    console.log (typeof data.created_date);
    // Called when there's incoming data on the websocket for this channel
    let qtyNotifications = document.querySelector('#qtyNotification');
    const notificationDate = new Date(data.created_date);
    const notification = `<div class="w-full p-3 mt-4 bg-white rounded flex">
    <div tabindex="0" aria-label="heart icon" role="img" class="focus:outline-none w-8 h-8 border rounded-full border-gray-200 flex items-center justify-center">
    <img src="https://tuk-cdn.s3.amazonaws.com/can-uploader/notification_1-svg10.svg"  alt="icon" class="text-indigo-700"/>                           
    </div>
    <div class="pl-3">
    <p tabindex="0" class="focus:outline-none text-sm leading-none"><span class="text-indigo-700">${data.user}</span> registro una visita en <span class="text-indigo-700">${data.gym}.</span></p>
    <p tabindex="0" class="focus:outline-none text-xs leading-3 pt-1 text-gray-500"><span class="text-indigo-700">${notificationDate.toLocaleDateString()} a las ${notificationDate.toLocaleTimeString()}</span></p>
    </div>
    </div>`;
    document.querySelector('#notificationsTitle').insertAdjacentHTML('afterEnd', notification);
    qtyNotifications.innerText = parseInt(qtyNotifications.innerText) + 1;
  }
});
}
