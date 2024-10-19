// $(document).ready(function() {
//   // Function to validate quantity input
//   function validateQuantity() {
//     let isValid = true;

//     $('.quantity-input').each(function() {
//       let quantity = parseInt($(this).val());

//       // Check if the quantity is invalid (not a number or less than 1)
//       if (isNaN(quantity) || quantity <= 0) {
//         $(this).siblings('.error-message').show(); // Show error message
//         isValid = false; // Mark as invalid
//       } else {
//         $(this).siblings('.error-message').hide(); // Hide error if valid
//       }
//     });

//     return isValid;
//   }

//   // On clicking the "Submit Cart" button, validate the form
//   $('#submit-cart').click(function(event) {
//     if (!validateQuantity()) {
//       alert('Please correct the quantities before submitting.'); // Alert if invalid
//       event.preventDefault(); // Prevent form submission
//     } else {
//       alert('Cart is valid, proceeding with submission!');
//       $('#cart-form').submit(); // Manually submit the form if validation passes
//     }
//   });

//   // Optional: Validate as the user types in the quantity input
//   $('.quantity-input').on('input', function() {
//     validateQuantity(); // Re-validate each time the input changes
//   });
// });
