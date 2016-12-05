$("#block1").click(function(){
   $("#block1").fadeToggle(500);
  });


$("#yellowcheck").change(function() {
    if(this.checked) {
    	$("#block2").css('color', 'yellow');
    } else {
    	$("#block2").css('color', 'black');
    }
});

