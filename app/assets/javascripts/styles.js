$(function(){
  $("a.see_description").on("click", function(e){
    $.get(this.href).success(function(json){
      var $p = $("div.description p")
      $p.html("")
      $p.append("<p>" + json.description + "/10" + "</p>")
    })
    e.preventDefault();
  })
})
