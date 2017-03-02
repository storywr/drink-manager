$(function(){
  class Review {
    constructor(username, summary, rating) {
      this.username = username;
      this.summary = summary;
      this.rating = rating;
    }

    concatReview() {
      return "<li>" + this.username + " - " + this.summary + " - " + this.rating + "/10" + "</li><br>"
    }
  }
  $(function(){
    $("a.see_reviews").on("click", function(e){
      $.get(this.href).success(function(json){
        var $ul = $("div.reviews ul")
        $ul.html("")
        json.forEach(function(review){
          var newReview = new Review(review.user.name, review.summary, review.rating)
          $ul.append(newReview.concatReview())
        })
      })
      e.preventDefault();
    })
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
