
<div class="form">
<h1>Logs</h1>   
<!--<input id="btnPrint" type="button" value="Print" onclick=preview() />-->
<p align="right" id="demo" onclick="preview()">Print</p> 
<input id="username" type = "hidden" value = "<?php echo AuthComponent::user('username'); ?>"> 
<input id="webroot" type="hidden" value = "<?php echo $this->webroot; ?>">


<div id = "myprint">        
<table>
    <thead>
        <tr>
            <th style="text-align: center;"><?php echo $this->Paginator->sort('username', 'Username');?>  </th>
            <th style="text-align: center;"><?php echo $this->Paginator->sort('ip', 'Ip');?></th>
            <th style="text-align: center;"><?php echo $this->Paginator->sort('time', 'LoginTime');?></th>
            <th style="text-align: center;"><?php echo $this->Paginator->sort('act','Action');?></th>
        </tr>
    </thead>
    <tbody>                   
        <?php $count=0; ?>
        <?php foreach($logs as $log): ?>                
        <?php $count ++;?>
        <?php if($count % 2): echo '<tr>'; else: echo '<tr class="zebra">' ?>
        <?php endif; ?>
            <td style="text-align: center;"><?php echo $log['Log']['username']; ?></td>
            <td style="text-align: center;"><?php echo $log['Log']['ip']; ?></td>
            <!--<td style="text-align: center;"><?php echo $this->Time->niceShort($log['Log']['time']); ?></td>-->
            <td style="text-align: center;"><?php echo $log['Log']['time']; ?></td>
            <td style="text-align: center;"><?php echo $log['Log']['act']; ?></td>
            </td>
        </tr>
        <?php endforeach; ?>
        <?php unset($log); ?>
    </tbody>
</table>
</div>
    <?php echo $this->Paginator->pagination(array('div' => 'pagination pagination-centered')); ?>
</div> 
<!--<script>  
    function preview(){ 
        //alter(WEBROOT_DIR);
        var html = document.getElementById("myprint").innerHTML;
        var printname = $("#username").val();
        var imgurl = $("#webroot").val() + "img/se_logo.gif";
        var imghtml = '<img src = "'+imgurl + '>';
        var comName = "Schneider Electric";
        var currentdate = new Date(); 
        var datetime = currentdate.getDate() + "/"+ (currentdate.getMonth()+1)  + "/" + currentdate.getFullYear();
        var space = "&nbsp;&nbsp;&nbsp&nbsp";
        var imghtml = '<img src ="/html/dbproject/img/se_logo.gif">';
        window.document.body.innerHTML = imghtml+"<p>"+comName+space+ datetime+space+printname+"</p>" + html;
        window.print();    
    }
</script>-->
<?php echo $this->Html->script('print')?>

