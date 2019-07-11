// TODO: React to a click on the button!
const clickme = document.getElementById("hidden");
const table = `<tr><td id="hidden" class="hidden"><p><%= ticket.id %></p></td><td id="hidden" class="hidden"><p><%= ticket.event_id %></p></td><td id="hidden" class="hidden"><p><%= ticket.price %></p></td></tr>`
clickme.addEventListener("click", (event) => {
  clickme.insertAdjacentHTML("beforeend", table);
});
