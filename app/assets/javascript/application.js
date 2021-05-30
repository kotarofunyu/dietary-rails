// Loads all Semantic javascripts
// = require semantic-ui
document.addEventListener('DOMContentLoaded', () => {
  $('#js-sidebar').on('click', function() {
    $('.ui.sidebar').sidebar('toggle');
  })

  $('.ui.dropdown').dropdown();
})

