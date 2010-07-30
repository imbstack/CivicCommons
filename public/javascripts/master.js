$(document).ready(function(){
  if(!Modernizr.input.placeholder) {
    $('[placeholder]').placeholder({className: 'placeholder'});
  }

  commentsTab.run();
})

var commentsTab = $.sammy(function(){

    this.get("#/question/new", function(){
      $("#comment_text").hide();
      $("#file_url").hide();
      $("#link_url").hide();
      $("#video_url").hide();
      $("#question_text").show();

    });
});


