$(function(){
  $(document).on("turbolinks:load", function() {
    var item = $('.subschool_id').val();
    // console.log(item);
    var cookie_name = 'recently_viewed_items';
    var viewed_items = [];
    // 既にクッキーが存在している場合は、ストリングを配列にする
    if(Cookies.get(cookie_name)){
      viewed_items = Cookies.get(cookie_name).split(",");
    }

    // 重複していなければ、itemを配列に追加
    if($.inArray(item, viewed_items)<0){
      if(item == undefined){
      }
      else{
      viewed_items.push(item);
      }
    }
    // else if($.inArray(item, viewed_items) == 1)
    // {
    //   viewed_items.slice(item, 1);
    //   // viewed_items.push(item);

    //   }

    // 5個以上ならば1つ削除
    if (viewed_items.length >= 5){
      viewed_items.shift();
    }

    // 配列をクッキ―に保存
    
    Cookies.set(cookie_name, viewed_items);
    // viewed_items.map( str => parseInt(str, 10) ); 
    console.log(cookie_name);
    console.log(viewed_items);
    // console.log(document.cookie);
  });
});
