<!DOCTYPE html>
<html>
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta charset="utf-8">
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />
<title><?php echo $this->_var['page_title']; ?></title>
<link rel="stylesheet" href="themes/meilele/css/mll_common.min.css?1122" />
<link  rel="stylesheet" type="text/css" href="themes/meilele/css/xspace_common.min.css" />
<script src="themes/meilele/js/jq.js"></script>
</head>
<body>
<?php echo $this->fetch('library/page_header.lbi'); ?>

<script>
var screenWidth=window.screen.width;
if(screenWidth>=1280){
    document.body.className="root_body";
}
</script>

<div class="xspace_bg">
<?php $_from = get_advlist_by_id(10); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'ad');$this->_foreach['index_image'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['index_image']['total'] > 0):
    foreach ($_from AS $this->_var['ad']):
        $this->_foreach['index_image']['iteration']++;
?>
  <div class="w" style="background:url(<?php echo $this->_var['ad']['image']; ?>) center 0 no-repeat;">
    <a title="" href="<?php echo $this->_var['ad']['url']; ?>" target="_blank"><img style="background:none;" src="themes/meilele/images/blank.gif" class="w" height="287"></a>
</div>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
  <div class="banner_box w mt10 clearfix" style="background:#FEFEFE">
    <div class="Left" id="JS_banner_nav"> <a href="javascript:;" class="tab active" data-type="show_all">全部秀家</a> </div>
    <div class="Left host_classify" id="JS_host_classify"> <span>热门分类：</span> 
	<?php $_from = get_cat_rec_2(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'rec_data');$this->_foreach['cat_rec'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['cat_rec']['total'] > 0):
    foreach ($_from AS $this->_var['rec_data']):
        $this->_foreach['cat_rec']['iteration']++;
?>
	<a href="category.php?id=<?php echo $this->_var['rec_data']['cat_id']; ?>" target="_blank"><?php echo $this->_var['rec_data']['cat_name']; ?></a> 
	<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	</div>
    
  </div>
  <div class="w mt10 clearfix" id="JS_xspace_main">
    <div class="Left xspace_list_box" id="JS_xspace_list_0" style="width:285px;margin-left:0px;">
      
      
    </div>
	<div class="Left xspace_list_box" id="JS_xspace_list_1" style="width:285px;">
	  
	  </div>
	  <div class="Left xspace_list_box" id="JS_xspace_list_2" style="width:285px;">
	  
	  </div>
	  <div class="Left xspace_list_box" id="JS_xspace_list_3" style="width:285px; float:right">
	  
	  </div>
  </div>
  <div id="xspace_list" style="display:none">
  <?php $_from = $this->_var['artciles_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'article');if (count($_from)):
    foreach ($_from AS $this->_var['article']):
?>
  <div class="x_list">
  <div class="dome_box">
        <div class="img_box" style="width:315px;"><a href="xspace_show.php?id=<?php echo $this->_var['article']['id']; ?>" title="<?php echo htmlspecialchars($this->_var['article']['title']); ?>" target="_blank"><img src="<?php echo $this->_var['article']['file_url']; ?>" width="285"></a>
        </div>
        <div class="img_info_box">
          <div class="clearfix padding0_10">
            <div class="Left like_review_box"><a href="javascript:;" class="icon_sprite icon_like JS_i_like"></a><i class="icon_sprite icon_like_only JS_only_like" style="display:none;"></i></div>
            <span class="like_num Left like_review_box JS_like_num"><?php echo $this->_var['article']['click']; ?></span>
            <div class="Right like_review_box"><a href="javascript:;" class="review_link JS_review_link"><span>评论</span><span class="Arial ml5"><?php echo $this->_var['article']['pager']['record_count']; ?></span></a></div>
          </div>
		  <?php $_from = $this->_var['article']['comments']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'comment');$this->_foreach['comments'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['comments']['total'] > 0):
    foreach ($_from AS $this->_var['comment']):
        $this->_foreach['comments']['iteration']++;
?>
		  <?php if ($this->_foreach['comments']['iteration'] < 3): ?>
          <div class="clearfix mt10 padding0_10">
		  <table>
		  <tr><td><a><img src="themes/meilele/images/xpace_user.jpg" height="32" width="32"></a></td>
		  
		  <td><div class="Right reply_message_box reply_message_box_" style="width:255px;"><aclass="name"><?php if ($this->_var['comment']['username']): ?><?php echo htmlspecialchars($this->_var['comment']['username']); ?><?php else: ?><?php echo $this->_var['lang']['anonymous']; ?><?php endif; ?></a>
              <p class="content"><?php echo $this->_var['comment']['content']; ?></p>
            </div></td></tr>
		  </table>
           
            
          </div>
		  <?php endif; ?>	
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </div>
        <div style="height:10px;background:#FFF; overflow:hidden"></div>
        <div class="icon_sprite icon_shadow" style="display: block;"></div>
      </div>
  </div>	  
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
  </div>
  <script language="javascript">
  
  if(screenWidth>=1280){

		  $('#xspace_list .x_list').each(
			function(i){
				var index = i + 1;
				if (index % 4 == 1){
					var temp = $('#JS_xspace_list_0').html();
					temp += $(this).html();
					$('#JS_xspace_list_0').html(temp);
				}
				if (index % 4 == 2){
					var temp = $('#JS_xspace_list_1').html();
					temp += $(this).html();
					$('#JS_xspace_list_1').html(temp);
				}
				if (index % 4 == 3){
					var temp = $('#JS_xspace_list_2').html();
					temp += $(this).html();
					$('#JS_xspace_list_2').html(temp);
				}
				if (index % 4 == 0){
					var temp = $('#JS_xspace_list_3').html();
					temp += $(this).html();
					$('#JS_xspace_list_3').html(temp);
				}
			}
		  );
	}else{
	        $('#JS_xspace_list_0').attr('style', 'width:315px;margin-left:0px;');
			$('#JS_xspace_list_1').attr('style', 'width:315px;');
			$('#JS_xspace_list_2').attr('style', 'width:315px;float:right');
			$('#JS_xspace_list_3').hide();
			
			$('#xspace_list .x_list').each(
			function(i){
				var index = i + 1;
				if (index % 3 == 1){
					var temp = $('#JS_xspace_list_0').html();
					temp += $(this).html();
					$('#JS_xspace_list_0').html(temp);
				}
				if (index % 3 == 2){
					var temp = $('#JS_xspace_list_1').html();
					temp += $(this).html();
					$('#JS_xspace_list_1').html(temp);
				}
				if (index % 3 == 0){
					var temp = $('#JS_xspace_list_2').html();
					temp += $(this).html();
					$('#JS_xspace_list_2').html(temp);
				}
			}
		  );
		  
		  $('.img_box img').attr('style', 'width:315px;');
	}	  
  </script>
  <div id="JS_index_page" class="page-index clearfix" style="display:none;"></div>
</div>
<?php echo $this->fetch('library/page_footer.lbi'); ?>

</body>
</html>
<!--
LDZ:2013-10-18 16:17:11
-->
