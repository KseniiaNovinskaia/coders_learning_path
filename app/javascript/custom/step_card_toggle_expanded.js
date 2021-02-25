
const initStepCardEventListener = () => {
  const stepCards = document.getElementsByClassName('step-card-container');

  for (var i = 0; i < stepCards.length; i++) {
    let stepCard = stepCards[i];
    // console.log(stepCard);
    let closedPart = stepCard.getElementsByClassName('step-card-closed-part')[0];
    console.log(closedPart);
    closedPart.addEventListener('click', (event) => {

      let expandedPart = stepCard.getElementsByClassName('step-card-expanded-part')[0];
      expandedPart.classList.toggle('step-card-expanded-part-expanded');
        // console.log(expandedPart);

      let expandIcon = stepCard.getElementsByClassName('step-card-expand-icon')[0];
      console.log(expandIcon);
      expandIcon.classList.toggle('step-card-expand-icon-expanded');
  });
  }
};

export { initStepCardEventListener };

