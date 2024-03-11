// let direction = 1; // 1 for right to left, -1 for left to right
//
// // Function to continuously move the slider
// function scroll() {
//   const container = document.getElementById("scroll-container");
//   container.scrollLeft += direction; // Adjust scroll speed as needed
//
//   if (direction === 1 && container.scrollLeft >= (container.scrollWidth - container.clientWidth)) {
//     direction = -1;
//   } else if (direction === -1 && container.scrollLeft <= 0) {
//     direction = 1;
//   }
// }
//
// // Call scroll function repeatedly
// setInterval(scroll, 20); // Adjust scroll speed as needed


// In your Javascript (external .js resource or <script> tag)
// Function to show Offcanvas after a delay
  function showOffcanvasWithDelay() {
    var offcanvas = new bootstrap.Offcanvas(document.getElementById('offcanvasExample'));
    setTimeout(function() {
      offcanvas.show();
    }, 5000); // 10 seconds delay
  }

  // Show Offcanvas after page load
  window.addEventListener('load', showOffcanvasWithDelay);
