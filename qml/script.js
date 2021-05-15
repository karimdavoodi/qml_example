
function getRandomColor() {  // thanks stackOverflow
  var letters = '0123456789ABCDEF';
  var color = '#';
  for (var i = 0; i < 6; i++) {
    color += letters[Math.floor(Math.random() * 16)];
  }
  return color;
}
function button_click(){

    main_title.text = random_text_read.next_text();
    main_title.color_change_to = getRandomColor();
    main_title.color_change_start();
}
