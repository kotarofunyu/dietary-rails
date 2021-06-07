// Loads all Semantic javascripts
// = require semantic-ui
document.addEventListener('DOMContentLoaded', () => {
  $('.message .close')
  .on('click', function() {
    $(this)
      .closest('.message')
      .transition('fade')
    ;
  })
;
  $('#js-sidebar').on('click', function() {
    $('.ui.sidebar').sidebar('toggle');
  })

  $('.ui.dropdown').dropdown();

})

