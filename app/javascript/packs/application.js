// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import $ from 'jquery';
import '../cart';

$(document).ready(function() {
  console.log("jQuery is working!");
});
$(document).ready(function() {
  function validateQuantity() {
    let isValid = true;

    $('.quantity-input').each(function() {
      let quantity = parseInt($(this).val());

      if (isNaN(quantity) || quantity <= 0) {
        $(this).siblings('.error-message').show();
        isValid = false; // Mark as invalid
      } else {
        $(this).siblings('.error-message').hide();
      }
    });

    return isValid;
  }

  $('#submit-cart').click(function(event) {
    if (!validateQuantity()) {
      alert('Please correct the quantities before submitting.');
      event.preventDefault();
    } else {
      alert('Cart is valid, proceeding with submission!');
      $('#cart-form').submit();
    }
  });

  $('.quantity-input').on('input', function() {
    validateQuantity();
  });
});
