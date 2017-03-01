// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function(){
  $("a.see_reviews").on("click", function(e){
    $.get(this.href).success(function(json){
      var $ol = $("div.reviews ol")
      $ol.html("")
      json.forEach(function(review){
        $ol.append("<li>" + review.summary + " - " + review.rating + "/10" + "</li>")
      })
    })
    e.preventDefault();
  })
})

$(function(){
  $("a.see_description").on("click", function(e){
    $.get(this.href).success(function(json){
      var $ol = $("div.description ol")
      $ol.html("")
      $ol.append("<li>" + json.description + "/10" + "</li>")
    })
    e.preventDefault();
  })
})

$(function(){
  $("#new_review").on("submit", function(e){
    url = this.action
    data = {
      'authenticity_token': $("input[name='authenticity_token']").val(),
      'review': {
        'summary': $("#review_summary").val(),
        'rating': $("#review_rating").val(),
        'beer_id': $("#review_beer_id").val(),
        'user_id': $("#review_user_id").val()
      }
    };

    $.ajax({
      type: "POST",
      url: url,
      data: data,
      success: function(response){
        $("#review_summary").val("");
        $("#review_rating").val("");
        var $ol = $("div.reviews ol")
        $ol.append(response);
      },
    })

    e.preventDefault();
  })
});
