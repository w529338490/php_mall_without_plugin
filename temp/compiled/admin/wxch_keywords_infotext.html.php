<!-- $Id: goods_info.htm 17126 2010-04-23 10:30:26Z liuhui $ -->
<?php echo $this->fetch('pageheader.htm'); ?>
<?php echo $this->smarty_insert_scripts(array('files'=>'../js/utils.js,selectzone.js,colorselector.js')); ?>
<script type="text/javascript" src="../js/calendar.php?lang=<?php echo $this->_var['cfg_lang']; ?>"></script>
<link href="../js/calendar/calendar.css" rel="stylesheet" type="text/css" />

<!-- start goods form -->
<div class="tab-div">
    <!-- tab bar -->
    <div class="tab-div">
<div id="tabbar-div">
    <p>
        <span class="tab-front" id="one-table">文字信息</span>
    </p>
</div>
<div id="tabbody-div">
<form enctype="multipart/form-data" action="" method="post" name="theForm" >
<!-- 通用信息 -->
<table width="90%" id="one-table" align="center">
    <tr>
                <td class="label">规则名称：</td>
                <td>
                    <input type="text" name="name" value="<?php echo $this->_var['data']['name']; ?>" style="float:left;color:;background:#ccc;border:none;" size="30" readonly />
                    <span class="require-field">*</span>
                </td>
            </tr>
            <tr>
                <td class="label">关键词(KEY值)：</td>
                <td>
                    <input type="text" name="keyword" value="<?php echo $this->_var['data']['keyword']; ?>" style="float:left;color:;background:#ccc;border:none;" size="30" readonly />
                    <span class="require-field">*</span>
                </td>
            </tr>
            <tr>
                <td class="label">消息类型：</td>
                <td>
                	文字
                </td>
            </tr>
            <!-- 详细描述 -->
          <tr>
              <td colspan="2" align="center" width="80%"><textarea rows="8" cols="30" id="contents" name="contents"><?php echo $this->_var['data']['contents']; ?></textarea></td>
          </tr>
</table>
</div>
</div>      


        <div class="button-div">
          <input type="hidden" name="id" value="<?php echo $this->_var['data']['id']; ?>" />
          <input name="type" type="hidden" value="1" />
          <input type="submit" value="保存" class="button" />
          <input type="reset" value="重置" class="button" />
        </div>
      
    
</div>
</form>
<!-- end keywords form -->
<?php echo $this->fetch('pagefooter.htm'); ?>
