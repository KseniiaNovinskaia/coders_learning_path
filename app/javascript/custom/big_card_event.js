

const initBigCardEventListener = () => {

const littleCards = document.querySelectorAll(".card_sm"); // def var -> everything with this css class
const bigCards = document.querySelectorAll(".path-card-expanded"); // def var -> everything with this css class
littleCards.forEach(littleCard => {
  littleCard.addEventListener("click", (event) => {
    // Find the big card id from the little card data attributes
    const smallCardId = littleCard.id; // def var --> the var with the css class and its html "id"
    // Find the big card element matching the big card id and small card ID
    const bigCard = document.querySelector(`[data-big-card-id=${smallCardId}]`) // def var --> the var with the css class and its htmel "id" matching the big and thw small
    console.log("big card id", bigCard); // check in the console that the bigCard id is the right one on click
    //Hide all existing big cards
    bigCards.forEach(bigCard => {
      // bigCard.classList.add("d-none")
      bigCard.style.display = "none";
    });
    //Display the selected big card
    bigCard.style.display = "block";
    //easeOutCubic: t => (--t)*t*t+1,
    //bigCard.classList.remove("d-none");
    // console.log(bigCard);
  })
})
};

export { initBigCardEventListener };


