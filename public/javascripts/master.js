$(document).ready(function(){
  if(!Modernizr.input.placeholder) {
    $('[placeholder]').placeholder({className: 'placeholder'});
  }
})


