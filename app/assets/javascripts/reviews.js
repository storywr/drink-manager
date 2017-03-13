$(function(){
  $("a.see_reviews").on("click", function(e){
    e.preventDefault()
    return getReviews(this.href)
  })

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

  class Review {
    constructor(attributes) {
      for (let key of Object.keys(attributes)) {
        this[key] = attributes[key]
      }
    }

    concatReview() {
      return "<li>" + this.user.name + " - " + this.summary + " - " + this.rating + "/10" + "</li><br>"
    }
  }


  function getReviews(url) {
    return fetch(url)
      .then(response => response.json())
      .then(json => appendReviews(json))
      .catch(err => console.log(err))
  }

  function appendReviews(reviews) {
    var $ul = $("div.reviews ul")
    $ul.html("")
    for (let i = 0; i < reviews.length; i++) {
      const attributes = reviews[i]
      const review = new Review(attributes)
      $ul.append(review.concatReview())
    }
  }

})
