import "jquery-bar-rating";
import $ from 'jquery';

const initStarRating = () => {
  $('#price').barrating({
    theme: 'bars-1to10'
    // onSelect: (value, text, event) => {
    //   const form = $("form.search-form"); // We are selecting the form on the page with its class
    //   form.submit(); // We submit the form with javascript
    // }
  });

  $('#opening').barrating({
    theme: 'bars-1to10'
    // onSelect: (value, text, event) => {
    //   const form = $("form.search-form"); // We are selecting the form on the page with its class
    //   form.submit(); // We submit the form with javascript
    // }
  });
};

export { initStarRating };
