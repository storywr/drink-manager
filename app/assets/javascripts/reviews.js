$(function(){
  $("a.see_reviews").on("click", function(e){
    $.get(this.href).success(function(json){
      var $ul = $("div.reviews ul")
      $ul.html("")
      json.forEach(function(review){
        $ul.append("<li>" + review.user.name + " - " + review.summary + " - " + review.rating + "/10" + "</li><br>")
      })
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
        var $ul = $("div.reviews ul")
        $ul.append(response + "<br>");
      },
    })

    e.preventDefault();
  })
});
