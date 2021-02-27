const initBigCardEventListener = () => {

const littleCards = document.querySelectorAll(".p_card_sm");
const bigCards = document.querySelectorAll(".path-card-expanded");
littleCards.forEach(littleCard => {
  littleCard.addEventListener("click", (event) => {
    // Find the big card id from the little card data attributes
    const bigCardId = littleCard.dataset.bigCardId;
    // Find the big card element from the big card id
    const bigCard = document.getElementById(bigCardId);
    // Hide all existing big cards
    bigCards.forEach(bigCard => {
      console.log("hiding card...");
      bigCard.classList.add("d-none")
    });
    // Display the selected big card
    bigCard.classList.remove("d-none");
  })
})
};

export { initBigCardEventListener };
