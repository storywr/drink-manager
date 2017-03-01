$(function(){
  $("a.see_description").on("click", function(e){
    $.get(this.href).success(function(json){
      var $ul = $("div.description ul")
      $ul.html("")
      $ul.append("<li>" + json.description + "/10" + "</li>")
    })
    e.preventDefault();
  })
})
